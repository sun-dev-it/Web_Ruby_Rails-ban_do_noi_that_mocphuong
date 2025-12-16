class Admin::ProjectInformationsController < ApplicationController
  before_action :require_admin
  before_action :require_admin_manager
  
  def index
    @project_informations = ProjectInformation.all.order(created_at: :desc)
    @project_information = ProjectInformation.new
  end

  def show
    @project_information = ProjectInformation.find(params[:id])
  end

  def new
    @project_information = ProjectInformation.new
  end

  def edit
    @project_information = ProjectInformation.find(params[:id])
  end

  def create
    @project_information = ProjectInformation.new(project_information_params)
    if @project_information.save
      redirect_to admin_project_informations_path
    else
      render :new
    end
  end

  def update
    @project_information = ProjectInformation.find(params[:id])
  
    if @project_information.update(project_information_params.except(:images))
      if project_information_params[:images]
        @project_information.images.attach(project_information_params[:images])
      end
      redirect_to edit_admin_project_information_path(@project_information), notice: "Đã cập nhật dự án"
    else
      render :edit
    end
  end

  def purge_image
    @project_information = ProjectInformation.find(params[:id])
    image = @project_information.images.find(params[:image_id])
    image.purge
    redirect_back fallback_location: edit_admin_project_information_path(@project_information), notice: "Đã xóa ảnh"
  end
  


  def destroy
    @project_information = ProjectInformation.find(params[:id])
    @project_information.destroy
    redirect_to admin_project_informations_path
  end
  
  private

  def project_information_params
    params.require(:project_information).permit(:name, :content, images: [])
  end

end
