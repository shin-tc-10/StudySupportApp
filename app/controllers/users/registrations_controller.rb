class Users::RegistrationsController < Devise::RegistrationsController

  def new
  end

  def create
    @user = User.new(sign_up_params)
    @user.save
  end


end
