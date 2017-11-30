class ContactsController < ApplicationController

  def new
    @contact=Contact.new
  end


  def create
    @contact=Contact.new(contact_params)
    if ContactMailer.send_when_update(@contact).deliver
      flash[:success]="お問い合わせ内容を送信しました。"
    end
    redirect_to root_path
  end

  private

    def contact_params
      params.require(:contact).permit(:name,:email,:content)
    end

end
