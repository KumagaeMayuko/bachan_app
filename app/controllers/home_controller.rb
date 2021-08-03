class HomeController < ApplicationController

  def top
    @diaries = Diary.all.order(created_at: :desc).last(4)
    @contact = Contact.new
  end

  def create_contact
    @diaries = Diary.all.order(created_at: :desc).last(4)
    @contact = Contact.new(
      name: params[:name],
      address: params[:address],
      email: params[:email],
      phone: params[:phone],
      quantity: params[:quantity],
      question: params[:question]
    )

    respond_to do |format|
      if @contact.save
        # ContactMailer.with(contact: @contact).thanks_mail.deliver_now
        format.html { redirect_to root_url(@contact), notice: 'Friend was successfully created.' }
        format.js {flash[:notice] = 'お問い合わせが送信されました'}
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { redirect_to root_url(@contact), notice: 'Friend was successfully created.' }
        format.js
        format.json { render json: @contact, status: :created, location: @contact }
      end
    end
  end
end

