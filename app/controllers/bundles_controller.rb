class BundlesController < ApplicationController
  def show

  end

  def new
    @bundle = Bundle.new
  end

  def create
    session[:bundle] = {}
    session[:bundle][:period] = params[:period]
    session[:bundle][:ends_on] = params[:ends_on]
    session[:bundle][:where] = params[:where]
    session[:bundle][:capacity] = params[:capacity]
    session[:bundle][:budget] = params[:budget]
    session[:bundle][:categories] = params[:categories]
    @bundle = Bundle.new
    @bundle.user = current_user
    @bundle.save
    if params[:categories].nil? || params[:period].nil? || params[:ends_on].nil? || params[:where].nil? || params[:capacity].nil? || params[:budget].nil?
      render :new
    elsif params[:categories].include?("lieu")
      redirect_to location_bundle_path(@bundle)
    else
      redirect_to services_bundle_path(@bundle)
    end
  end

  def location
    @places_suppliers = Supplier.near(session[:bundle]['where'], 30).where.not(latitude: nil, longitude: nil)

    dates = session[:bundle]['period'].split(' au ')
    start_date = DateTime.parse(dates.first)
    end_date = DateTime.parse(dates.last)
    @event_days = (start_date..end_date).map{ |a| a }

    # @places_suppliers = check_availabilities(@places_suppliers)
    @places_suppliers = check_budget(@places_suppliers)
    @places_suppliers = check_capacity(@places_suppliers)
    # raise

    @markers = @places_suppliers.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude#,
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { flat: flat }) }
      }
    end
    @places_suppliers
  end

  def services
    @suppliers = Supplier.all

    @services_selected = session[:bundle]["categories"]
    # geocoder.search(session[:bundle]['where'])
    geocode_where = Geocoder.search(session[:bundle]['where'])
    region = geocode_where.first.address_components[2]["long_name"]
    raise
    @suppliers_areas = @suppliers.areas
    @services_suppliers = @suppliers_areas
    # dates = session[:bundle]['period'].split(' au ')
    # start_date = DateTime.parse(dates.first)
    # end_date = DateTime.parse(dates.last)
    # @event_days = (start_date..end_date).map{ |a| a }

    # check session where en fct des areas des suppliers (autres services)
    # @services_suppliers =

    # check availabilities
    # check budget (somme des services restants =< au budget restant(= 80% budget))
    @services_suppliers = @services_suppliers.each { |supplier| supplier.price <= params[:budget] }

    # check capacity
  end

  def check_availabilities(suppliers)
    return suppliers.select do |supplier|
      supplier.availabilities.map do |avail|
        (avail.starts_on..avail.ends_on).map{ |a| a }.flatten.uniq.include?(@event_days)
      end
    end
  end

  def check_budget(suppliers)
    nb_days = @event_days.count
    budget = session[:bundle]['budget'].to_i
    return suppliers.select do |supplier|
      (supplier.price.to_f * nb_days) <= (0.2 * budget)
    end
  end

  def check_capacity(suppliers)
    nb_people = session[:bundle]['capacity'].to_i
    return suppliers.select do |supplier|
      supplier.capacity >= nb_people
    end
  end
end
