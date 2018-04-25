json.extract! user, :id, :nombre, :apellidopaterno, :apellidomaterno, :edad, :peso, :altura, :talla, :created_at, :updated_at
json.url user_url(user, format: :json)
