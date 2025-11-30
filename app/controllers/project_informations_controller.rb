class ProjectInformationsController < ApplicationController
  def index
    @project_informations = ProjectInformation.all
  end
end

