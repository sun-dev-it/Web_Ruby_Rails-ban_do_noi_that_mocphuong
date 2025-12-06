  class CartsController < ApplicationController
    before_action :require_login
    
    def show
      @cart_items = current_user.cart_items.includes(:product)
      @products = @cart_items.map(&:product)
    end

    # Thêm sản phẩm vào giỏ
    def add
      item = current_user.cart_items.find_or_initialize_by(product_id: params[:product_id])
      item.quantity = (item.quantity || 0) + 1
      item.save!
      redirect_back(fallback_location: products_path)
    end

    # Xóa bớt 1 sản phẩm khỏi giỏ
    def remove
      item = current_user.cart_items.find_by(product_id: params[:product_id])
      return unless item
    
      item.quantity -= 1
      if item.quantity <= 0
        item.destroy
      else
        item.save!
      end
      redirect_back(fallback_location: products_path)
    end

    # Xóa tất cả sản phẩm khỏi giỏ
    def remove_all
      current_user.cart_items.destroy_all
      redirect_back(fallback_location: products_path)
    end

  end
