class ProjectInformationsController < ApplicationController
  def index
    @project_information = Introduction.first
  end
end
