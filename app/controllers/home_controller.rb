class HomeController < ApplicationController

  def top
    @diaries = Diary.all.order(created_at: :desc).last(4)
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(
      name: params[:name],
      address: params[:address],
      email: params[:email],
      phone: params[:phone],
      quantity: params[:quantity],
      question: params[:question]
    )
    if @contact.save
      ContactMailer.with(contact: @contact).thanks_mail.deliver_now
      redirect_to root_path
    end
  end

end

