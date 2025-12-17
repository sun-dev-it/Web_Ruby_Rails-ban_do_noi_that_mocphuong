class Admin::ShowroomsController < ApplicationController
    
    before_action :require_super_admin
    before_action :set_showroom, only: [:update]

    def index
      @showroom = Showroom.first_or_initialize
    end

    def update
      if @showroom.update(showroom_params.except(:images))
        if showroom_params[:images]
          @showroom.images.attach(showroom_params[:images])
        end
        redirect_to admin_showrooms_path
      else
        render :edit
      end
    end

    def purge_image
      @showroom = Showroom.find(params[:id])
      image = @showroom.images.find(params[:image_id])
      image.purge
      redirect_back fallback_location: admin_showrooms_path(@showroom)
    end
    private

    def set_showroom
      @showroom = Showroom.find(params[:id])
    end

    def showroom_params
      params.require(:showroom).permit(:content, images: [])
    end
  end
end
