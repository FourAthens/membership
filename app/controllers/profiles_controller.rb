class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def new
    @user = User.new
    @user.build_profile
    @plan = Plan.find_by(stripe_plan_id: params[:stripe_plan_id])
  end

  def create
    @user = User.create!(user_params)
    if @user.save
      @profile = @user.create_profile
      @plan = Plan.find_by(stripe_plan_id: params[:stripe_plan_id])
      response = ProcessStripePayment.new(@user.id, params[:registration][:card_token], params[:stripe_plan_id]).call
      Subscription.create(profile_id: @profile.id, plan_id: @plan.id, status: response.status)
      @profile.update(stripe_customer_id: response.customer, cc_exp_month: params[:user][:profile_attributes][:cc_exp_month], cc_exp_year: params[:user][:profile_attributes][:cc_exp_year], street_address: params[:user][:profile_attributes][:street_address], city: params[:user][:profile_attributes][:city], state: params[:user][:profile_attributes][:state], zip_code: params[:user][:profile_attributes][:zip_code])
      sign_in @user
      if @plan.stripe_plan_id == "individual-monthly" || @plan.stripe_plan_id == "individual-annual"
        redirect_to @profile, success: "Congrats! Welcome to Four Athens!"
      else
        redirect_to new_organization_path, success: "Set up your organization account"
      end
    else
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
