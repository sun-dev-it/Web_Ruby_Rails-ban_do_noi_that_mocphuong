class Admin::AccessoriesController < ApplicationController
  before_action :require_admin
  before_action :require_admin_manager

  def index
    @accessories = Accessory.all
    @accessory = Accessory.new
  end

  def new
    @accessory = Accessory.new
  end

  def edit
    @accessory = Accessory.find(params[:id])
  end

  def create
    @accessory = Accessory.new(accessory_params)
    if @accessory.save
      redirect_to admin_accessories_path
    else
      render :new
    end
  end

  def update
    @accessory = Accessory.find(params[:id])
    if @accessory.update(accessory_params)
      redirect_to admin_accessories_path
    else
      render :edit
    end
  end

  def destroy
    @accessory = Accessory.find(params[:id])
    @accessory.destroy
    redirect_to admin_accessories_path
  end
  
  private

  def accessory_params
    params.require(:accessory).permit(:name, :content, :image)
  end

end

