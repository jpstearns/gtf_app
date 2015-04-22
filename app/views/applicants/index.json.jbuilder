json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :first_name, :last_name, :social, :email, :address, :line2, :city, :state, :zip, :phone1, :phone2, :company, :comments, :dob, :type
  json.url applicant_url(applicant, format: :json)
end
