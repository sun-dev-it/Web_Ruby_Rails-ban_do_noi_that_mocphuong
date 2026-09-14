class ProjectInformationsController < ApplicationController
  before_action :set_project_information, only: [:show]
  def index
    @project_informations = ProjectInformation.where(featured: false).order(created_at: :desc)
    @project_informations_featured = ProjectInformation.where(featured: true).order(created_at: :desc)
    @projectInformationInfor = ProjectInformationInfor.first
  end

  def show
    @project_informations = ProjectInformation.where(featured: false).order(created_at: :desc)
    @project_informations_featured = ProjectInformation.where(featured: true).order(created_at: :desc)
  end

  private


  def set_project_information
    @project_information = ProjectInformation.find(params[:id])
  end
end

