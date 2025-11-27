module Admin
  class OrdersController < ApplicationController
    before_action :require_admin
    before_action :set_order, only: [:show, :update]

    def index
      @orders_by_status = {
        Waiting: Order.where(status: "Đang chờ liên hệ"),
        Contacted: Order.where(status: "Đã liên hệ"),
        Delivering: Order.where(status: "Đang giao hàng"),
        Delivered: Order.where(status: "Đã giao hàng"),
        Cancelled: Order.where(status: "Đã hủy")
      }
    end

    def show
      @items = @order.order_items.includes(:product)
    end

    # Cập nhật trạng thái đơn hàng
    def update
      @order = Order.find(params[:id])
      previous_status = @order.status
    
      if @order.update(order_params)
        # Lưu lịch sử thay đổi trạng thái
        OrderHistory.create!(
          order: @order,
          user: current_user,
          previous_status: previous_status,
          new_status: @order.status
        )
      
        redirect_to admin_order_path(@order), notice: "Cập nhật trạng thái thành công"
      else
        render :edit
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
