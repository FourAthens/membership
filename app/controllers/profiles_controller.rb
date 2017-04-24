class ProfilesController < ApplicationController
  def new
    @user = User.new
    @user.build_profile
    @plan = Plan.find_by(stripe_plan_id: params[:stripe_plan_id])
  end

  def create
  end

  def show
  end
end
