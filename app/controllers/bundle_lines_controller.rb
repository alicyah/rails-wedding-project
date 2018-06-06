class BundleLinesController < ApplicationController
  def create
    @bundle = Bundle.find(params[:bundle_id])

    if params[:supplier_ids]
      ids = params[:supplier_ids].split

      ids.each do |supplier_id|
        @bundle_line = BundleLine.new(bundle: @bundle)
        @supplier = Supplier.find(supplier_id)
        @bundle_line.supplier = @supplier
        set_bundle_line_amount

        @bundle_line.save
      end
    else
      @bundle_line = BundleLine.new(bundle: @bundle)
      @supplier = Supplier.find(params[:supplier_id])
      @bundle_line.supplier = @supplier
      set_bundle_line_amount
    end

    if @bundle_line.save
      update_bundle_amount

      if session[:bundle]["categories"].include?("lieu") && session[:bundle]["categories"].count > 1
        # TO DO HERE : add amount as params => redirect_to services_bundle_path(@bundle, amount: amount)
        redirect_to services_bundle_path(@bundle)
      else
        redirect_to bundle_path(@bundle)
      end
    else
      redirect_to location_bundle_path(@bundle)
    end
  end

  private

  def set_bundle_line_amount
    supplier = @bundle_line.supplier

    if supplier.service.category == "lieu"
      nb_days = @bundle.ends_on - @bundle.starts_on
      @bundle_line.amount_cents = supplier.price_cents * nb_days
    elsif supplier.service.category == "traiteur"
      @bundle_line.amount_cents = supplier.price_cents * @bundle.capacity
    else
      @bundle_line.amount_cents = supplier.price_cents
    end
  end

  def update_bundle_amount
    amount_cents = 0

    @bundle.bundle_lines.reload.each do |bundle_line|
      amount_cents += bundle_line.amount_cents
    end

    @bundle.update(amount_cents: amount_cents)
  end
end
