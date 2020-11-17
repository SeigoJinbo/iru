require 'test_helper'

class EventControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get event_new_url
    assert_response :success
  end

  test "should get edit" do
    get event_edit_url
    assert_response :success
  end

end
