require "test_helper"

class FactoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get factorys_path
    assert_response :success
  end
end
