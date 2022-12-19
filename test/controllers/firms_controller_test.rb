require "test_helper"

class FirmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get firms_index_url
    assert_response :success
  end

  test "should get create" do
    get firms_create_url
    assert_response :success
  end

  test "should get new" do
    get firms_new_url
    assert_response :success
  end

  test "should get destroy" do
    get firms_destroy_url
    assert_response :success
  end
end
