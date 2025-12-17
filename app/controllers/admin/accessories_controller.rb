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
      redirect_to edit_admin_accessory_path(@accessory)
    else
      render :new
    end
  end

  def update
    @accessory = Accessory.find(params[:id])

    # Lưu ảnh mới nếu có
    if params[:accessory][:images]
      params[:accessory][:images].each do |image|
        @accessory.images.attach(image)
      end
    end

    # Cập nhật các attribute khác
    if @accessory.update(accessory_params.except(:images))
      redirect_to admin_accessorys_path, notice: "Cập nhật thành công"
    else
      render :edit
    end
  end


  def destroy
    @accessory = Accessory.find(params[:id])
    @accessory.destroy
    redirect_to admin_accessories_path
  end

  def destroy_image
    @accessory = Accessory.find(params[:id])
    image = @accessory.images.find(params[:image_id])
    image.purge
    redirect_back(fallback_location: @accessory_path, notice: "Đã xóa ảnh.")
  end
  
  private

  def accessory_params
    params.require(:accessory).permit(:name, :content, images: [])
  end

end

