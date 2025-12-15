module Admin
  class SlogansController < ApplicationController
    before_action :require_admin
    before_action :require_super_admin

    def edit
    end

    def update
      if @slogan.update(slogan_params)
        redirect_to admin_dashboard_path, notice: "Cập nhật Slogan thành công!"
      else
        render :edit
      end
    end

    private

    def slogan_params
      params.require(:slogan).permit(:content, :image)
    end
  end
end
