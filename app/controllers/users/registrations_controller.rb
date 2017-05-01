class Users::RegistrationsController < Devise::RegistrationsController
  def edit
    resource = current_user
  end
end
