class AccessoriesController < ApplicationController
  before_action :set_accessory, only: [:show]
  def index
    @accessories = Accessory.all.order(created_at: :desc)
  end

  def show
  end

  private


  def set_accessory
    @accessory = Accessory.find(params[:id])
  end
end