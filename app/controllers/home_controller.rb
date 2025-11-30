class HomeController < ApplicationController
  def index
    @users = User.all
    @introduction = Introduction.first
    @promotions = Promotion.all
  end
end
