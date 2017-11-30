class ContactsController < ApplicationController
  def new
    @contact=Contact.new
  end


  def create
    @contact=Contact.new(contact_params)
    ContactMailer.send_when_update(@contact).deliver
    redirect_to new_contact_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name,:email,:content)
  end

end
