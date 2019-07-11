class UserMailerPreview < ActionMailer::Preview
  def order_receipt
    UserMailer.order_receipt("user@example.com", 223, Order.find(2).line_items, Order.find(2).total)
  end
end
