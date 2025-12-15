class Admin::DecorationsController < ApplicationController
  before_action :require_admin
  before_action :require_admin_manager

  def index
    @decorations = Decoration.all
    @decoration = Decoration.new
  end

  def show
    @decoration = Decoration.find(params[:id])
  end

  def new
    @decoration = Decoration.new
  end

  def edit
    @decoration = Decoration.find(params[:id])
  end

  def create
    @decoration = Decoration.new(decoration_params)
    if @decoration.save
      redirect_to admin_decorations_path
    else
      render :new
    end
  end

  def update
    @decoration = Decoration.find(params[:id])
    if @decoration.update(decoration_params)
      redirect_to admin_decorations_path
    else
      render :edit
    end
  end

  def destroy
    @decoration = Decoration.find(params[:id])
    @decoration.destroy
    redirect_to admin_decorations_path
  end
  
  private

  def decoration_params
    params.require(:decoration).permit(:name, :content, :image)
  end

end
