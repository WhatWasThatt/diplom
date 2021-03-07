json.extract! processor, :id, :name, :description, :price, :category, :country, :produced, :brand, :crystalcodename, :socket, :model, :created_at, :updated_at
json.url processor_url(processor, format: :json)
