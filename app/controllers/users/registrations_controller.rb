class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #
    else render new
    end
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
