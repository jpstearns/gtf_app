require 'test_helper'

class AssignmentsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
