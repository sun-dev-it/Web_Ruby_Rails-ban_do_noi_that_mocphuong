module Admin
  class ProjectInformationInforsController < ApplicationController
    before_action :require_super_admin
    before_action :set_project, only: [:update]

    def index
      @projectInformationInfor = ProjectInformationInfor.first_or_initialize
    end

    def update
      if @project.update(project_params.except(:images))
        if project_params[:images]
          @project.images.attach(project_params[:images])
        end
        redirect_to admin_project_information_infors_path
      else
        render :edit
      end
    end

    def purge_image
      @projectInformationInfor = ProjectInformationInfor.find(params[:id])
      image = @projectInformationInfor.images.find(params[:image_id])
      image.purge
      redirect_back fallback_location: admin_project_information_infors_path(@projectInformationInfor)
    end

    private

    def set_project
      @project = ProjectInformationInfor.find(params[:id])
    end

    def project_params
      params.require(:project_information_infor).permit(:content, images: [])
    end
  end
end
