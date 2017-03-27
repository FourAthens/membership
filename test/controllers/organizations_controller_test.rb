require 'test_helper'

class OrganizationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organization_new_url
    assert_response :success
  end

end
