module Admin
  class IntroductionsController < ApplicationController
    before_action :require_admin
    before_action :require_super_admin

    def edit
      @introduction = Introduction.first_or_initialize
    end
    
    def update
      @introduction = Introduction.first_or_initialize
    
      if params[:introduction][:images]
        @introduction.images.attach(params[:introduction][:images])
      end
    
      # Cập nhật các trường khác
      if @introduction.update(introduction_params.except(:images))
        redirect_to edit_admin_introduction_path
      else
        render :edit
      end
    end

    def destroy_image
      image = @introduction.images.find(params[:image_id])
      image.purge
      redirect_back(fallback_location: introduction_path(@introduction), notice: "Xóa ảnh thành công")
    end


    private

    def introduction_params
      params.require(:introduction).permit(:title, :content, :link_video, images: [])
    end
  end
end
