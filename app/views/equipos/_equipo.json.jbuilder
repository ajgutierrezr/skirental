json.extract! equipo, :id, :name, :description, :picture, :price, :created_at, :updated_at
json.url equipo_url(equipo, format: :json)
