json.array!(@clients) do |client|
  json.extract! client, :id, :clientName, :clientPhone, :clientEmail, :address1, :address2, :city, :state, :zip
  json.url client_url(client, format: :json)
end
