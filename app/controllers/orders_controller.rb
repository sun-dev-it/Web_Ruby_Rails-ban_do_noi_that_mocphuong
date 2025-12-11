class OrdersController < ApplicationController
  before_action :require_login

  def new
    @cart_items = current_user.cart_items.includes(:product)
    if @cart_items.empty?
      redirect_to products_path
    end
  end


  def create
    cart_items = current_user.cart_items.includes(:product)
    total = cart_items.sum { |i| i.product.price * i.quantity }
    phone_number = params[:phone]
    order = current_user.orders.create!(
      total_price: total,
      status: "Đang chờ liên hệ",
      phone: phone_number
    )

    cart_items.each do |i|
      order.order_items.create!(
        product: i.product,
        quantity: i.quantity,
        price: i.product.price
      )
    end

    cart_items.destroy_all

    redirect_to order_path(order)
  end

  # Hiển thị danh sách đơn hàng của người dùng
  def index
    @orders = current_user.orders.includes(:order_items)
  end

  # Hiển thị chi tiết một đơn hàng
  def show
    @order = current_user.orders.find(params[:id])
    @order_items = @order.order_items.includes(:product)
  end

  
end
