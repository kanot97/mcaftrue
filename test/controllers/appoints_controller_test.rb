require "test_helper"

class AppointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appoints_index_url
    assert_response :success
  end

  test "should get show" do
    get appoints_show_url
    assert_response :success
  end

  test "should get new" do
    get appoints_new_url
    assert_response :success
  end

  test "should get create" do
    get appoints_create_url
    assert_response :success
  end

  test "should get destroy" do
    get appoints_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get appoints_edit_url
    assert_response :success
  end

  test "should get update" do
    get appoints_update_url
    assert_response :success
  end
end
