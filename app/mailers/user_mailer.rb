class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def order_receipt(email, id, items, total)
    @email = email
    @items  = items
    @total = total
    mail(to: @email, subject: 'Order receipt: ' + id.to_s)
  end
end
