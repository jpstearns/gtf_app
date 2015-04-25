json.array!(@cases) do |case|
  json.extract! case, :id, :typeOfCase, :user_id, :applicant_id, :client_id, :status, :licenseType, :position, :renewal, :applicant_name, :applicant_dob, :applicant_social, :caseNumber, :gaming_license_number, :location, :assigned_date, :closed_date, :user_badge_number
  json.url case_url(case, format: :json)
end
