class ContactMailer < ApplicationMailer
  default from: 'mayukokumagae315@gmail.com'
  def thanks_mail
    @contact = params[:contact]
    mail(to: @contact.email, subject:'ご注文ありがとうございます')
  end
end
