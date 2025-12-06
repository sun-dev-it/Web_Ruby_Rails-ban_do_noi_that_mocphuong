class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.order(:name)
    @products = Product.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products  # nếu Category có quan hệ has_many :products
  end

  
  private
  def set_category
    @category = Category.find(params[:id])
  end
end
