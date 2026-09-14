class HomeController < ApplicationController
  def index
    @introduction = Introduction.first_or_initialize
    @promotions = Product.where(promotion: true).order(created_at: :desc)
    @products = Product.where(featured: true).order(created_at: :desc)
    @featured_projects = ProjectInformation.where(featured: true).order(created_at: :desc).limit(3)
    @projectInformationInfor= ProjectInformationInfor.first
  end
end