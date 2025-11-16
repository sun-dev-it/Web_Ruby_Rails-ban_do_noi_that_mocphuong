require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contacts_path
    assert_response :success
  end
end
