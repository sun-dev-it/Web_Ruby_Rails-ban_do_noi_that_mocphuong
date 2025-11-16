require "test_helper"

class ShoppingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shoppings_path
    assert_response :success
  end
end
