class Admin::DesignOfficesController < ApplicationController
  before_action :require_admin_manager

  def edit
    @design_office = DesignOffice.first
  end

  def update
    @design_office = DesignOffice.first_or_create!
    if @design_office.update(design_office_params)
      redirect_to edit_admin_design_office_path
    else
      render :edit
    end
  end

  private

  def design_office_params
    params.require(:design_office).permit(:content, :image)
  end
end
