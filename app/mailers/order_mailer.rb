class OrderMailer < ApplicationMailer
  def order_created(order)
    @order = order
    @user = order.user

    admin_emails = ENV.fetch("ADMIN_EMAILS", "")
                       .split(",")
                       .map(&:strip)
                       .reject(&:blank?)

    mail(
      to: admin_emails,
      subject: "[MocPhuong] Có đơn hàng mới ##{@order.id}"
    )
  end
end