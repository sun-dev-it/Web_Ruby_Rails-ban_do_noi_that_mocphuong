class Admin::ProductsController < ApplicationController
  before_action :require_admin
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
    @product = Product.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      if params[:product][:images]
        @product.images.attach(params[:product][:images])
      end
      redirect_to admin_product_path(@product), notice: "Đã tạo sản phẩm"
    else
      render :new
    end
  end

  def edit; end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      if params[:product][:images]
        @product.images.attach(params[:product][:images])
      end
      redirect_to edit_admin_product_path(@product), notice: "Đã cập nhật sản phẩm"
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path, notice: "Đã xóa sản phẩm!"
  end

  def remove_image
    product = Product.find(params[:id])
    image = product.images.find(params[:image_id])
    image.purge
    redirect_back fallback_location: edit_product_path(product)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, images: []
    )
  end
end
