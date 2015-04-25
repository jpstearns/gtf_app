json.array!(@investigations) do |investigation|
  json.extract! investigation, :id, :typeOfCase, :user_id, :applicant_id, :client_id, :status, :licenseType, :position, :renewal, :applicant_name, :applicant_dob, :applicant_social, :caseNumber, :gaming_license_number, :location, :assigned_date, :closed_date, :user_badge_number
  json.url investigation_url(investigation, format: :json)
end
