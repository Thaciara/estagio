json.extract! cliente, :id, :nome, :logo, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
