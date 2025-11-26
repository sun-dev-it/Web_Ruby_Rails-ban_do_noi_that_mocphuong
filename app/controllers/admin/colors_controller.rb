module Admin
  class ColorsController < ApplicationController
    before_action :require_admin

    def index
      @colors = Color.all
    end

    def new
      @color = Color.new
    end

    def create
      @color = Color.new(color_params)
      if @color.save
        redirect_to admin_colors_path
      else
        render :new
      end
    end

    def edit
      @color = Color.first
    end

    def update
      if @color.update(color_params)
        redirect_to admin_colors_path
      else
        render :edit
      end
    end

    def destroy
      @color.destroy
      redirect_to admin_colors_path
    end

    private

    def color_params
      params.require(:color).permit(:bachground, :background1, :header, :footer)
    end
  end
end
