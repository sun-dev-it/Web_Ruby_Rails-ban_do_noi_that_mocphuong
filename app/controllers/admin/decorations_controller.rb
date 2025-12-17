class Admin::DecorationsController < ApplicationController
  before_action :require_admin
  before_action :require_admin_manager

  def index
    @decorations = Decoration.all.order(created_at: :desc)
    @decoration = Decoration.new
  end

  def new
    @decoration = Decoration.new
  end

  def edit
    @decoration = Decoration.find(params[:id])
  end

  def create
    @decoration = Decoration.new(decoration_params)
    if @decoration.save
      redirect_to edit_admin_decoration_path(@decoration)
    else
      render :new
    end
  end

  def update
    @decoration = Decoration.find(params[:id])
    if @decoration.update(decoration_params)
      redirect_to admin_decorations_path
    else
      render :edit
    end
  end

  def destroy
    @decoration = Decoration.find(params[:id])
    @decoration.destroy
    redirect_to admin_decorations_path
  end

  def destroy_image
    @decoration = Decoration.find(params[:id])
    image = @decoration.images.find(params[:image_id])
    image.purge
    redirect_back(fallback_location: @decoration_path, notice: "Đã xóa ảnh.")
  end
  
  private

  def decoration_params
    params.require(:decoration).permit(:name, :content, image: [])
  end

end
