class HomeController < ApplicationController
  def index
    @introduction = Introduction.first
    @promotions = Product.where(promotion: true).order(created_at: :desc)
    @products = Product.where(featured: true).order(created_at: :desc)
    @projectInformationInfor= ProjectInformationInfor.first
  end
end