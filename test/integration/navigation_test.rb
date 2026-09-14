require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  test "products index loads successfully" do
    get products_path
    assert_response :success
  end

  test "contact page loads successfully" do
    get contact_path
    assert_response :success
  end

  test "project informations index loads successfully" do
    get project_informations_path
    assert_response :success
  end

  test "decorations index loads successfully" do
    get decorations_path
    assert_response :success
  end

  test "factory page loads successfully" do
    get factory_path
    assert_response :success
  end

  test "design office page loads successfully" do
    get design_office_path
    assert_response :success
  end

  test "user registration page loads successfully" do
    get new_user_path
    assert_response :success
  end
end

