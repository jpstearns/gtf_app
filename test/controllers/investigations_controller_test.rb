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
      post :create, investigation: { applicant_dob: @investigation.applicant_dob, applicant_id: @investigation.applicant_id, applicant_name: @investigation.applicant_name, applicant_social: @investigation.applicant_social, assigned_date: @investigation.assigned_date, caseNumber: @investigation.caseNumber, client_id: @investigation.client_id, closed_date: @investigation.closed_date, gaming_license_number: @investigation.gaming_license_number, licenseType: @investigation.licenseType, location: @investigation.location, position: @investigation.position, renewal: @investigation.renewal, status: @investigation.status, typeOfCase: @investigation.typeOfCase, user_badge_number: @investigation.user_badge_number, user_id: @investigation.user_id }
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
    patch :update, id: @investigation, investigation: { applicant_dob: @investigation.applicant_dob, applicant_id: @investigation.applicant_id, applicant_name: @investigation.applicant_name, applicant_social: @investigation.applicant_social, assigned_date: @investigation.assigned_date, caseNumber: @investigation.caseNumber, client_id: @investigation.client_id, closed_date: @investigation.closed_date, gaming_license_number: @investigation.gaming_license_number, licenseType: @investigation.licenseType, location: @investigation.location, position: @investigation.position, renewal: @investigation.renewal, status: @investigation.status, typeOfCase: @investigation.typeOfCase, user_badge_number: @investigation.user_badge_number, user_id: @investigation.user_id }
    assert_redirected_to investigation_path(assigns(:investigation))
  end

  test "should destroy investigation" do
    assert_difference('Investigation.count', -1) do
      delete :destroy, id: @investigation
    end

    assert_redirected_to investigations_path
  end
end
