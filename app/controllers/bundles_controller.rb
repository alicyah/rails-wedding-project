class BundlesController < ApplicationController
  def show

  end

  def new
    @bundle = Bundle.new
  end

  def create
    session[:bundle] = {}
    session[:bundle][:starts_on] = params[:starts_on]
    session[:bundle][:ends_on] = params[:ends_on]
    session[:bundle][:where] = params[:where]
    session[:bundle][:capacity] = params[:capacity]
    session[:bundle][:budget] = params[:budget]
    session[:bundle][:categories] = params[:categories]
    @bundle = Bundle.new
    @bundle.user = current_user
    @bundle.save
    if params[:categories].nil? || params[:starts_on].nil? || params[:ends_on].nil? || params[:where].nil? || params[:capacity].nil? || params[:budget].nil?
      render :new
    elsif params[:categories].include?("lieu")
      redirect_to location_bundle_path(@bundle)
    else
      redirect_to services_bundle_path(@bundle)
    end
  end

  def location
    @bundle = Bundle.find(params[:id])
    @places_suppliers = Supplier.near(session[:bundle]['where'], 80).where.not(latitude: nil, longitude: nil)
    start_date = DateTime.parse(session[:bundle]['starts_on'])
    end_date = DateTime.parse(session[:bundle]['ends_on'])
    # dates = session[:bundle]['starts_on'].split(' au ')
    # start_date = DateTime.parse(dates.first)
    # end_date = DateTime.parse(dates.last)
    @event_days = (start_date..end_date).map{ |a| a }

    @places_suppliers = check_availabilities(@places_suppliers)
    @places_suppliers = check_budget(@places_suppliers)
    @places_suppliers = check_capacity(@places_suppliers)

    @markers = @places_suppliers.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        supplier_id: place.id,
        infoWindow: { content: render_to_string(partial: "/bundles/map_box", locals: { place: place }) }
      }
    end
    @places_suppliers
  end

  def services
    # 1 - Selection of all suppliers that are not 'lieu'
    @services_supplier = Supplier.joins(:service).where.not(services: { category: 'lieu' })
    # 2 - bundle that we are building
    @bundle = Bundle.find(params[:id])
    # 3 - selected services on the new bundle page
    @services_selected = session[:bundle]["categories"]
    # 4 - check session where en fct des areas des suppliers (autres services)
    # a) get region from address put in the form by the user
    geocode_where = Geocoder.search(session[:bundle]['where'])
    array_geocode = geocode_where.first.address_components
    region = ""
    array_geocode.each do |address_component|
      if address_component["types"].first == "administrative_area_level_1"
        region = address_component["long_name"]
      end
    end
    # b) keep only suppliers which area is variable region
    @services_supplier = @services_supplier.select do |service_supplier|
      service_supplier.area == region
    end
    # 5 - check availabilities by comparing dates of user and availabilities of suppliers
    # a) get  start and end dates entered by user and transform it in an array of dates
    start_date = DateTime.parse(session[:bundle]['starts_on'])
    end_date = DateTime.parse(session[:bundle]['ends_on'])
    @event_days = (start_date..end_date).map{ |a| a }
    # b) call check_availabilities method to filter suppliers
    @services_supplier = check_availabilities(@services_supplier)

    # what's above is ok
    #--------------------------------------------------------------------------
  end

  def check_availabilities(suppliers)
    return suppliers.select do |supplier|
      supplier.availabilities.map do |avail|
        (avail.starts_on..avail.ends_on).map{ |a| a }.flatten.uniq.include?(@event_days)
      end
    end
    raise
  end

  def check_budget(suppliers)
    nb_days = @event_days.count
    budget = session[:bundle]['budget'].to_i
    return suppliers.select do |supplier|
      (supplier.price.to_f * nb_days) <= (0.3 * budget)
    end
  end

  def check_capacity(suppliers)
    nb_people = session[:bundle]['capacity'].to_i
    return suppliers.select do |supplier|
      supplier.capacity >= nb_people
    end
  end
end
