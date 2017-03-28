# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :integer
#  frequency  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plan < ApplicationRecord
  has_many :subscrptions
  has_many :profiles, through: :subscriptions

  has_many :plan_details, dependent: :destroy

  enum frequency: [:monthly, :yearly]
end
