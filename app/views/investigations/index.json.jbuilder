json.array!(@investigations) do |investigation|
  json.extract! investigation, :id, :applicant_social, :client_id, :user.id, :renewal
  json.url investigation_url(investigation, format: :json)
end
