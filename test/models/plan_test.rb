# == Schema Information
#
# Table name: plans
#
#  id             :integer          not null, primary key
#  name           :string
#  price          :integer
#  frequency      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  stripe_plan_id :string
#

require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
