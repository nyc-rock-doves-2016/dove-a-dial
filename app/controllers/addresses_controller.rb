class AddressesController < ApplicationController
  # /contact/:contact_id/address/new
  def new
    @contact = Contact.find(params[:contact_id])
    @address = Address.new
  end

  def create
    @contact = Contact.find(params[:contact_id])
    address = @contact.addresses.build(address_params)

    if address.save 
      redirect_to user_contact_path(@contact.user, @contact)
    else
      redirect_to :new
    end
  end

  private 

  def address_params
    params.require(:address).permit(:address_one, :address_two, :city, :state, :zip)
  end
end