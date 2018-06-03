class ImagesController < ApplicationController
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @supplier = Supplier.find(params[:supplier_id])
    @image.supplier = @supplier
    if @image.save
      redirect_to suppliers_path
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:photo :supplier_id)
  end
end
