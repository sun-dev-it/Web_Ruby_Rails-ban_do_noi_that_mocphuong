class Admin::ProductsController < ApplicationController
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
      redirect_to admin_products_path, notice: "Tạo sản phẩm thành công!"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to admin_products_path, notice: "Cập nhật thành công!"
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path, notice: "Đã xóa sản phẩm!"
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :name,
      :price,
      :description,
      :category_id
    )
  end
end
