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

require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
