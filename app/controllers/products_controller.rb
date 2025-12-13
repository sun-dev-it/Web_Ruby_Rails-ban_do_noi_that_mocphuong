class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @products = @product.category.products.where.not(id: @product.id)
  end


  private


  def set_product
    @product = Product.find(params[:id])
  end
end
