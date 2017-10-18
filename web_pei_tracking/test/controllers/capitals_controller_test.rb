require 'test_helper'

class CapitalsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get capitals_create_url
    assert_response :success
  end

  test "should get destroy" do
    get capitals_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get capitals_edit_url
    assert_response :success
  end

end
