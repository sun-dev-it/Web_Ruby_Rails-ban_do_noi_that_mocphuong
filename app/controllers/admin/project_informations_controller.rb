class Admin::ProjectInformationsController < ApplicationController
  before_action :require_admin
  before_action :require_admin_manager
  
  def index
    @project_informations = ProjectInformation.all
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
    if @project_information.update(project_information_params)
      redirect_to admin_project_informations_path
    else
      render :edit
    end
  end

  def destroy
    @project_information = ProjectInformation.find(params[:id])
    @project_information.destroy
    redirect_to admin_project_informations_path
  end
  
  private

  def project_information_params
    params.require(:project_information).permit(:name, :content, :image [])
  end

end
