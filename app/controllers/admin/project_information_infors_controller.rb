module Admin
  class ProjectInformationInforsController < ApplicationController
    before_action :require_super_admin
    before_action :set_project, only: [:edit, :update, :destroy, :show]

    def index
      @projects = ProjectInformationInfor.all
    end

    def new
      @project = ProjectInformationInfor.new
    end

    def create
      @project = ProjectInformationInfor.new(project_params)
      if @project.save
        redirect_to admin_project_information_infors_path, notice: "Tạo dự án thành công"
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @project.update(project_params)
        redirect_to admin_project_information_infors_path, notice: "Cập nhật dự án thành công"
      else
        render :edit
      end
    end

    def destroy
      @project.destroy
      redirect_to admin_project_information_infors_path, notice: "Xóa dự án thành công"
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
