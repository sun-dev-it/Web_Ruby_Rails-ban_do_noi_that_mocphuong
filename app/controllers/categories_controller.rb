class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.order(:name)
    @products = Product.order(created_at: :desc)
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
