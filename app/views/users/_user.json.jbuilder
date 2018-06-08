json.extract! user, :id, :nombre, :apellidopaterno, :apellidomaterno, :nac, :peso, :altura, :talla, :talla_parka, :talla_pantalon, :created_at, :updated_at
json.url user_url(user, format: :json)
