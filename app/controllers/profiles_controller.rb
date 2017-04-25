class ProfilesController < ApplicationController
  def new
    @user = User.new
    @user.build_profile
    @plan = Plan.find_by(stripe_plan_id: params[:stripe_plan_id])
  end

  def create
    @user = User.create!(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation], name: params[:user][:name])
    if @user.save
      response = ProcessStripePayment.new(@user.id, params[:registration][:card_token], params[:stripe_plan_id])
    else
      render :new
    end
  end

  def show
  end
end
