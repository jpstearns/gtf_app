require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get calendar" do
    get :calendar
    assert_response :success
  end

end
