# Preview all emails at http://localhost:3000/rails/mailers/arriendo_mailer
class ArriendoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/arriendo_mailer/order_confirm
  def order_confirm
    ArriendoMailer.order_confirm
  end

end
