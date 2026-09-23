class OrderMailer < ApplicationMailer
  def order_created(order)
    @order = order
    @user = order.user

    admin_get_emails = ENV.fetch("ADMIN_GET_MAILS", "")
                       .split(",")
                       .map(&:strip)
                       .reject(&:blank?)

    mail(
      to: admin_get_emails,
      subject: "[MocPhuong] Có đơn hàng mới ##{@order.id}"
    )
  end
end