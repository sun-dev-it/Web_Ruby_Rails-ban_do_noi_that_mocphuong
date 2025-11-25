require "test_helper"

class Admin::IntroductionsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_introductions_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_introductions_update_url
    assert_response :success
  end
end
