class BundleLinesController < ApplicationController
  def create
    @bundle = Bundle.find(params[:bundle_id])
    @bundle_line = BundleLine.new(bundle: @bundle)
    @supplier = Supplier.find(params[:supplier_id])
    @bundle_line.supplier = @supplier
    if @bundle_line.save
      update_bundle_amount
      if session[:bundle]["categories"].include?("lieu") && session[:bundle]["categories"].count > 1
        redirect_to services_bundle_path(@bundle)
      else
        redirect_to bundle_path(@bundle)
      end
    else
      redirect_to location_bundle_path(@bundle)
    end

  end

  private

  def update_bundle_amount
    amount_cents = 0
    @bundle.suppliers.each do |supplier|
      if supplier.service.category == "lieu"
        nb_days = @bundle.ends_on - @bundle.starts_on
        amount_cents += supplier.price_cents * nb_days
      elsif supplier.service.category == "traiteur"
        amount_cents += supplier.price_cents * @bundle.capacity
      else
        amount_cents += supplier.price_cents
      end
    end
    @bundle.update(amount_cents: amount_cents)
  end
end
