require "test_helper"

class ProjectInformationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_informations_path
    assert_response :success
  end
end
