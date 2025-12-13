class HomeController < ApplicationController
  def index
    @users = User.all
    @introduction = Introduction.first
    @promotions = Promotion.all
    @products = Product.where(featured: true).order(created_at: :desc)
    @projectInformationInfor= ProjectInformationInfor.first
  end
end