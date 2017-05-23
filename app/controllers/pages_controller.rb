# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  include HighVoltage::StaticPage
  before_action :load_plans
  before_action :check_sign_in, only: [:show]

  private

  def check_sign_in
    if params[:id] == 'benefits'
      authenticate_user!
    end
  end

  def load_plans
    @monthly_plans = Plan.monthly
    @yearly_plans = Plan.yearly
  end

end