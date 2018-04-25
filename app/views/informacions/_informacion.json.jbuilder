json.extract! informacion, :id, :created_at, :updated_at
json.url informacion_url(informacion, format: :json)
