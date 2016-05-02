class ContactsController < ApplicationController
  # /users/:user_id/contacts/:id
  def show
    @contact = Contact.find_by(id: params[:id])
    @user = @contact.user
    @addresses = @contact.addresses
  end
end