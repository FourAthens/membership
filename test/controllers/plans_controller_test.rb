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
#  description    :text
#

require 'test_helper'

class PlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plans_index_url
    assert_response :success
  end

  test "should get new" do
    get plans_new_url
    assert_response :success
  end

  test "should get show" do
    get plans_show_url
    assert_response :success
  end

  test "should get edit" do
    get plans_edit_url
    assert_response :success
  end

end
