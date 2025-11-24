class CartItemsController < ApplicationController
  before_action :require_login

  def index
    @items = current_user.cart_items.includes(:product)
  end

  def create
    item = current_user.cart_items.find_or_initialize_by(product_id: params[:product_id])
    item.quantity = (item.quantity || 0) + 1
    item.save!
    redirect_to cart_path
  end

  def destroy
    item = current_user.cart_items.find(params[:id])
    item.destroy
    redirect_to cart_path
  end
end
