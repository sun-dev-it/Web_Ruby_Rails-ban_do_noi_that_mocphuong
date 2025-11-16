require "test_helper"

class DecorationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get decorations_path
    assert_response :success
  end
end
