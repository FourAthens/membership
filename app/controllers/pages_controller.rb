# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  include HighVoltage::StaticPage
  before_action :load_plans

  private

  def load_plans
    @monthly_plans = Plan.monthly
    @yearly_plans = Plan.yearly
  end

end