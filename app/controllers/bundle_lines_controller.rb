class BundleLinesController < ApplicationController
  def create
    @bundle = Bundle.find(params[:bundle_id])
    @bundle_line = BundleLine.new(bundle: @bundle)
    @supplier = Supplier.find(params[:id])
    @bundle_line.bundle = @bundle
    @bundle_line.supplier = @supplier
    if @bundle_line.save
      if session[:bundle]["categories"].include?("location") && session[:bundle]["categories"].count > 1
        redirect_to services_bundle_path(@bundle)
      else
        redirect_to bundle_path(@bundle)
      end
    else
      redirect_to location_bundle_path(@bundle)
    end

  end

end
