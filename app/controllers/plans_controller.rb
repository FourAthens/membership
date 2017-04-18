class PlansController < ApplicationController
  before_action :enforce_admin
  before_action :find_plan only: [:edit, :show, :update, :destroy]

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
    if @plan.update(plan_params)
      redirect_to @plan, success: "Plan updated!"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def enforce_admin
    unless user_signed_in? && current_user.admin?
      redirect_to new_user_session_path, notice: "You're not allowed to access that."
    end
  end

  def find_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:name, :price, :frequency, plan_details_attributes: [:id, :content, :_destroy])
  end
end
