require 'test_helper'

class CasesControllerTest < ActionController::TestCase
  setup do
    @case = cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case" do
    assert_difference('Case.count') do
      post :create, case: { applicant_dob: @case.applicant_dob, applicant_id: @case.applicant_id, applicant_name: @case.applicant_name, applicant_social: @case.applicant_social, assigned_date: @case.assigned_date, caseNumber: @case.caseNumber, client_id: @case.client_id, closed_date: @case.closed_date, gaming_license_number: @case.gaming_license_number, licenseType: @case.licenseType, location: @case.location, position: @case.position, renewal: @case.renewal, status: @case.status, typeOfCase: @case.typeOfCase, user_badge_number: @case.user_badge_number, user_id: @case.user_id }
    end

    assert_redirected_to case_path(assigns(:case))
  end

  test "should show case" do
    get :show, id: @case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case
    assert_response :success
  end

  test "should update case" do
    patch :update, id: @case, case: { applicant_dob: @case.applicant_dob, applicant_id: @case.applicant_id, applicant_name: @case.applicant_name, applicant_social: @case.applicant_social, assigned_date: @case.assigned_date, caseNumber: @case.caseNumber, client_id: @case.client_id, closed_date: @case.closed_date, gaming_license_number: @case.gaming_license_number, licenseType: @case.licenseType, location: @case.location, position: @case.position, renewal: @case.renewal, status: @case.status, typeOfCase: @case.typeOfCase, user_badge_number: @case.user_badge_number, user_id: @case.user_id }
    assert_redirected_to case_path(assigns(:case))
  end

  test "should destroy case" do
    assert_difference('Case.count', -1) do
      delete :destroy, id: @case
    end

    assert_redirected_to cases_path
  end
end
