require "test_helper"

class TechskillsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get techskills_index_url
    assert_response :success
  end

  test "should get create" do
    get techskills_create_url
    assert_response :success
  end

  test "should get new" do
    get techskills_new_url
    assert_response :success
  end

  test "should get destroy" do
    get techskills_destroy_url
    assert_response :success
  end
end
