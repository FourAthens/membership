# == Schema Information
#
# Table name: plan_details
#
#  id         :integer          not null, primary key
#  plan_id    :integer
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_plan_details_on_plan_id  (plan_id)
#

class PlanDetail < ApplicationRecord
  belongs_to :plan
end
