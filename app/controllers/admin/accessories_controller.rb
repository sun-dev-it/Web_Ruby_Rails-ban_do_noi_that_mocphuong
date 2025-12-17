class Admin::AccessoriesController < ApplicationController
  before_action :require_admin
  before_action :require_admin_manager

  def index
    @accessories = Accessory.all.order(created_at: :desc)
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
      redirect_to admin_accessories_path(@accessory)
    else
      render :new
    end
  end

  def update
    @accessory = ProjectInformationInfor.find(params[:id])
    if @accessory.update(accessory_params.except(:images))
      if accessory_params[:images]
        @accessory.images.attach(accessory_params[:images])
      end
      redirect_to admin_accessories_path
    else
      render :edit
    end
  end

  def purge_image
    @accessory = Accessory.find(params[:id])
    image = @accessory.images.find(params[:image_id])
    image.purge
    redirect_back fallback_location: admin_accessories_path(@accessory)
  end

  def destroy
    @accessory = Accessory.find(params[:id])
    @accessory.destroy
    redirect_to admin_accessories_path
  end
  
  private

  def accessory_params
    params.require(:accessory).permit(:name, :content, images: [])
  end

end

