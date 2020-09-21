json.extract! client, :id, :name, :phone_number, :enamil, :created_at, :updated_at
json.url client_url(client, format: :json)
