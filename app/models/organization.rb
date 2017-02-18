# == Schema Information
#
# Table name: organizations
#
#  id           :integer          not null, primary key
#  name         :string
#  org_owner_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Organization < ApplicationRecord
  has_one :owner, class_name: 'User', foreign_key: :org_owner_id
  has_one :profile, as: :profileable
end
