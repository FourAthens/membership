class PlansController < ApplicationController
  before_action :enforce_admin

  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.create(plan_params)
    if @plan.save
      redirect_to plans_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def enforce_admin
    unless user_signed_in? && user.admin?
      redirect_to root_path, notice: "You're not allowed to access that."
    end
  end

  def plan_params
    params.require(:plan).permit(:name, :price, :frequency, plan_details_attributes: [:id, :content, :_destroy])
  end
end
