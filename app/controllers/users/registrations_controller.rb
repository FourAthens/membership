class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      #
    else render new
    end
    redirect_to @user
  end

  # def after_sign_up_path_for(@user)
  #  redirect_to
  # end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
