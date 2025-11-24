module Admin
  class OrdersController < ApplicationController
    before_action :require_admin
    before_action :set_order, only: [:show, :update]

    def index
      @orders = Order.order(created_at: :desc)
    end

    def show
      @items = @order.order_items.includes(:product)
    end

    # Cập nhật trạng thái đơn hàng
    def update
      if @order.update(order_params)
        redirect_to admin_order_path(@order), notice: "Cập nhật trạng thái thành công!"
      else
        redirect_to admin_order_path(@order), alert: "Không thể cập nhật!"
      end
    end

    private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:status)
    end
  end
end
