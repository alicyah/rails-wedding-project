class BundlesController < ApplicationController
  def show
  end

  def new
    @bundle = Bundle.new
  end

  def create
    session[:bundle] = {}
    category-name = []
    @bundle.user = current.user
    @bundle.save

  if
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
