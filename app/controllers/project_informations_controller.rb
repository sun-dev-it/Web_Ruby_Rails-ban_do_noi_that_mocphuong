class ProjectInformationsController < ApplicationController
  before_action :set_project_information, only: [:show]
  def index
    @project_informations = ProjectInformation.where(featured: false)
    @project_informations_featured = ProjectInformation.where(featured: true)
    @projectInformationInfor= ProjectInformationInfor.first
  end

  def show
    @project_informations = ProjectInformation.where(featured: false)
    @project_informations_featured = ProjectInformation.where(featured: true)
  end

  private


  def set_project_information
    @project_information = ProjectInformation.find(params[:id])
  end
end

