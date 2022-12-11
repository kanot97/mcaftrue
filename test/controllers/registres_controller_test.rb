require "test_helper"

class RegistresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registres_index_url
    assert_response :success
  end

  test "should get show" do
    get registres_show_url
    assert_response :success
  end

  test "should get new" do
    get registres_new_url
    assert_response :success
  end

  test "should get create" do
    get registres_create_url
    assert_response :success
  end

  test "should get edit" do
    get registres_edit_url
    assert_response :success
  end

  test "should get update" do
    get registres_update_url
    assert_response :success
  end

  test "should get destroy" do
    get registres_destroy_url
    assert_response :success
  end
end
