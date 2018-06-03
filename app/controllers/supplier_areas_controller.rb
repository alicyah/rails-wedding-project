class SupplierAreasController < ApplicationController
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @areas = Area.all
    @supplier_area = Supplier_area.new
  end

  def create
    @supplier_area = Supplier_area.new(supplier_area_params)
    @supplier = Supplier.find(params[:supplier_id])
    @supplier_area.supplier = @supplier
    if @supplier_area.save
      redirect_to suppliers_path
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:area_id :supplier_id)
  end
end
