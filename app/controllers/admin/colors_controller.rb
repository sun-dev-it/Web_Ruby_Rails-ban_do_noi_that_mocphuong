module Admin
  class ColorsController < ApplicationController
    before_action :require_admin
    before_action :require_super_admin

    def edit
      @color ||= Color.first
    end

    def update
      @color = Color.first
      if @color.update(color_params)
        redirect_to edit_admin_color_path
      else
        render :edit
      end
    end

    private

    def color_params
      params.require(:color).permit(:background, :background1, :header, :footer)
    end
  end
end
