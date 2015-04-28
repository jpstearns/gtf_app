json.array!(@investigations) do |investigation|
  json.extract! investigation, :id
  json.url investigation_url(investigation, format: :json)
end
