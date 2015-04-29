json.array!(@investigations) do |investigation|
  json.extract! investigation, :id, :applicant_social, :user_badge_number, :cient_id, :status, :renewal
  json.url investigation_url(investigation, format: :json)
end
