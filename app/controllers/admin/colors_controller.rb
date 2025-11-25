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
        redirect_to admin_colors_path, notice: "Tạo màu thành công!"
      else
        render :new
      end
    end

    def edit; end

    def update
      if @color.update(color_params)
        redirect_to admin_colors_path, notice: "Cập nhật màu thành công!"
      else
        render :edit
      end
    end

    def destroy
      @color.destroy
      redirect_to admin_colors_path, notice: "Đã xóa màu!"
    end

    private

    def color_params
      params.require(:color).permit(:name, :hex)
    end
  end
end
