# == Schema Information
#
# Table name: profiles
#
#  id                 :integer          not null, primary key
#  cc_exp_month       :string
#  cc_exp_year        :string
#  last_four_digits   :string
#  street_address     :string
#  city               :string
#  state              :string
#  zip_code           :string
#  stripe_customer_id :string
#  stripe_token       :string
#  profileable_type   :string
#  profileable_id     :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_profiles_on_profileable_type_and_profileable_id  (profileable_type,profileable_id)
#

require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profiles_new_url
    assert_response :success
  end

  test "should get create" do
    get profiles_create_url
    assert_response :success
  end

  test "should get show" do
    get profiles_show_url
    assert_response :success
  end

end
