class UsersController < ApplicationController

  # '/users/:id'
  def show
    @user = User.find_by(id: params[:id])
    @contacts = @user.contacts
  end
end
