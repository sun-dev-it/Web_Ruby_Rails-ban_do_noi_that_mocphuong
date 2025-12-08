class DecorationsController < ApplicationController
  before_action :set_decoration, only: [:show]
  def index
    @decorations = Decoration.all
  end

  def show
  end

  private


  def set_decoration
    @decoration = Decoration.find(params[:id])
  end
end
