require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  test "products index loads successfully" do
    get products_path
    assert_response :success
  end

  test "contacts index loads successfully" do
    get contacts_path
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

  test "factorys index loads successfully" do
    get factorys_path
    assert_response :success
  end

  test "design offices index loads successfully" do
    get design_offices_path
    assert_response :success
  end

  test "users index loads successfully" do
    get users_path
    assert_response :success
  end

  test "shoppings index loads successfully" do
    get shoppings_path
    assert_response :success
  end
end

