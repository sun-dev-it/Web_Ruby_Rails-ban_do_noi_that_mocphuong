module Admin
  class IntroductionsController < ApplicationController
    before_action :require_admin

    def edit
      @introduction = Introduction.first_or_initialize
    end
    
    def update
      @introduction = Introduction.first_or_initialize
      if @introduction.update(introduction_params)
        redirect_to edit_admin_introduction_path
      else
        render :edit
      end
    end


    private

    def introduction_params
      params.require(:introduction).permit(:title, :image, :content, :link_video)
    end
  end
end
