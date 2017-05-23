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

require 'test_helper'

class OrganizationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organization_new_url
    assert_response :success
  end

end
