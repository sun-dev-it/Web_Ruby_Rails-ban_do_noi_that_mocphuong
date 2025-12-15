class Admin::PromotionsController < ApplicationController
  before_action :require_admin

  def index
    @promotions = Promotion.all
    @promotion = Promotion.new
  end

  def show
    @promotion = Promotion.find(params[:id])
  end

  def new
    @promotion = Promotion.new
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def create
    @promotion = Promotion.new(promotion_params)
    if @promotion.save
      redirect_to admin_promotions_path
    else
      render :new
    end
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update(promotion_params)
      redirect_to admin_promotions_path
    else
      render :edit
    end
  end

  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy
    redirect_to admin_promotions_path
  end
  
  private

  def promotion_params
    params.require(:promotion).permit(:name, :content, :video, :image)
  end

end