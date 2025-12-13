class ProjectInformationsController < ApplicationController
  before_action :set_project_information, only: [:show]
  def index
    @project_informations = ProjectInformation.all
    @introduction= ProjectInformationInfor.first
  end

  def show
    @project_informations = ProjectInformation.all
  end

  private


  def set_project_information
    @project_information = ProjectInformation.find(params[:id])
  end
end

