class DesignOfficesController < ApplicationController
  def show
    @design_office = DesignOffice.first
  end
end
