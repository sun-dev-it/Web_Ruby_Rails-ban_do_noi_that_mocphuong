require "test_helper"

class DesignOfficeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get design_offices_path
    assert_response :success
  end
end
