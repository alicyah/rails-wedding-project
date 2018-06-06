class BundleLinesController < ApplicationController
  def create
    @bundle = Bundle.find(params[:bundle_id])
    if params[:supplier_ids]
      ids = params[:supplier_ids].split
      ids.each do |supplier_id|
        @bundle_line = BundleLine.new(bundle: @bundle)
        @supplier = Supplier.find(supplier_id)
        @bundle_line.supplier = @supplier
        @bundle_line.save
      end
    else
      @bundle_line = BundleLine.new(bundle: @bundle)
      @supplier = Supplier.find(params[:supplier_id])
      @bundle_line.supplier = @supplier
    end
    if @bundle_line.save
      if session[:bundle]["categories"].include?("lieu") && session[:bundle]["categories"].count > 1
        redirect_to services_bundle_path(@bundle)
      else
        redirect_to bundle_path(@bundle)
      end
    else
      redirect_to location_bundle_path(@bundle)
    end
  end
end
