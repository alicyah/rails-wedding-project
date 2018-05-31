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

    if params[:categories].include?("location")
      redirect_to location_bundle_path(@bundle)
    else
      redirect_to services_bundle_path(@bundle)
    end
  end

  def location
    @places_suppliers = Supplier.near(session[:bundle]["where"], 100).where.not(latitude: nil, longitude: nil)
    # address is included in the "where" search
    # check availabilities
    event_days = (Date.yesterday..Date.tomorrow).map{ |a| a }
    @places_suppliers = @places_suppliers.select do |place|
      availabilities_days = place.availaibilites.map do |avail|
        (avail.starts_on..avail.ends_on).map{ |a| a }.flatten.uniq.include?(event_days)
      end
    end
    # nb_days = end_date - start_date
    nb_days = event_days.count
    # price*nb_days <= 20% max_budget
    budget = session[:bundle]["budget"]
    @places_suppliers = @places_suppliers.select do |place|
      place.price*nb_days <= 0.2*budget
    end
    # capacity >= nb_people expected
    nb_people = session[:bundle]["capacity"]
    @places_suppliers = @places_suppliers.select do |place|
      place.capacity >= nb_people
    end
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { flat: flat }) }
      }
    end
    @places_suppliers
  end

  def services
  end
end
