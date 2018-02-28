class OrderNotifierMailer < ApplicationMailer
  default from: 'Wildan Humam <wildan@41studio.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
  def received(order)
    # @greeting = "Hi"
    # mail to: "to@example.org"
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
  def shipped(order)
    # @greeting = "Hi"
    # mail to: "to@example.org"
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
