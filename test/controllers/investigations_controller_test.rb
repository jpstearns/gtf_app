require 'test_helper'

class InvestigationsControllerTest < ActionController::TestCase
  setup do
    @investigation = investigations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investigations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investigation" do
    assert_difference('Investigation.count') do
      post :create, investigation: { applicant_id: @investigation.applicant_id, client_id: @investigation.client_id, comments: @investigation.comments, renewal: @investigation.renewal, status: @investigation.status, user_badge_number: @investigation.user_badge_number }
    end

    assert_redirected_to investigation_path(assigns(:investigation))
  end

  test "should show investigation" do
    get :show, id: @investigation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investigation
    assert_response :success
  end

  test "should update investigation" do
    patch :update, id: @investigation, investigation: { applicant_id: @investigation.applicant_id, client_id: @investigation.client_id, comments: @investigation.comments, renewal: @investigation.renewal, status: @investigation.status, user_badge_number: @investigation.user_badge_number }
    assert_redirected_to investigation_path(assigns(:investigation))
  end

  test "should destroy investigation" do
    assert_difference('Investigation.count', -1) do
      delete :destroy, id: @investigation
    end

    assert_redirected_to investigations_path
  end
end
