class Admin::ShowroomsController < ApplicationController
    
    before_action :require_super_admin

    def edit
      @showroom = Showroom.first
    end



    def update
      @showroom = Showroom.first
      if @showroom.update(showroom_params.except(:images))
        if showroom_params[:images]
          @showroom.images.attach(showroom_params[:images])
        end
        redirect_to edit_admin_showroom_path
      else
        render :edit
      end
    end

    def purge_image
      @showroom = Showroom.find(params[:id])
      image = @showroom.images.find(params[:image_id])
      image.purge
      redirect_back fallback_location: edit_admin_showroom_path(@showroom)
    end
    private

    def showroom_params
      params.require(:showroom).permit(:content, images: [])
    end
end
