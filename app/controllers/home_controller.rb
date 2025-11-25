class HomeController < ApplicationController
  def index
    @users = User.all
    @introduction = Introduction.first
  end
end
