class ProjectInformationsController < ApplicationController
  before_action :set_project_information, only: [:show]
  def index
    @projects_per_page = 6
    @page = [params.fetch(:page, 1).to_i, 1].max
    all_other_projects = ProjectInformation.where(featured: false).order(created_at: :desc)
    @total_other_projects = all_other_projects.count
    @project_informations = all_other_projects.limit(@page * @projects_per_page)
    @has_more_projects = @project_informations.length < @total_other_projects
    @next_page = @page + 1
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

