json.array!(@investigations) do |investigation|
  json.extract! investigation, :id, :applicant_id, :client_id, :user_badge_number, :status, :renewal, :comments
  json.url investigation_url(investigation, format: :json)
end
