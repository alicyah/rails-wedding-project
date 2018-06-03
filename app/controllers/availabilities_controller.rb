class AvailabilitiesController < ApplicationController
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @availability = Availability.new
  end

  def create
    @availability = Availability.new(availability_params)
    @supplier = Supplier.find(params[:supplier_id])
    @availability.supplier = @supplier
    if @availability.save
      redirect_to suppliers_path
    else
      render :new
    end
  end

  private

  def availability_params
    params.require(:availability).permit(:starts_on, :ends_on, :supplier_id)
  end
end
