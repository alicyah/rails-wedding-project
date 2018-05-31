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
  end

  def services
  end
end
