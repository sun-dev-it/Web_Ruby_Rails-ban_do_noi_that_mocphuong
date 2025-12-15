class Admin::FactoriesController < ApplicationController
    before_action :require_admin
    before_action :require_super_admin

    def edit
      @factory = Factory.first
    end

    def update
      @factory = Factory.first_or_create!
      if @factory.update(factory_params)
        redirect_to edit_admin_factory_path
      else
        render :edit
      end
    end

    private

    def factory_params
      params.require(:factory).permit(:content, :image)
    end
end
