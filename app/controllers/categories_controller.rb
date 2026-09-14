class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.order(:name)
    @products_per_page = 8
    @page = [params.fetch(:page, 1).to_i, 1].max
    @total_products = Product.count
    @products = Product.order(created_at: :desc).limit(@page * @products_per_page)
    @has_more_products = @products.length < @total_products
    @next_page = @page + 1
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

  
  private
  def set_category
    @category = Category.find(params[:id])
  end
end
