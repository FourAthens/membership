# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  profile_id :integer
#  plan_id    :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_subscriptions_on_plan_id     (plan_id)
#  index_subscriptions_on_profile_id  (profile_id)
#

class Subscription < ApplicationRecord
  belongs_to :profile
  belongs_to :plan

  enum status: [:active, :expired, :cancelled, :overdue]
end
