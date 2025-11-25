module Admin
  class IntroductionsController < ApplicationController
    before_action :require_admin

    def edit
      @introduction = Introduction.first || Introduction.new
    end

    def update
      @introduction = Introduction.first || Introduction.new
      if @introduction.update(introduction_params)
        redirect_to admin_dashboard_path, notice: "Cập nhật giới thiệu thành công"
      else
        render :edit
      end
    end

    private

    def introduction_params
      params.require(:introduction).permit(:title, :content)
    end
  end
end
