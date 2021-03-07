json.extract! videocard, :id, :name, :description, :price, :produced, :brand_id, :category_id, :country_id, :processor, :type, :memory, :created_at, :updated_at
json.url videocard_url(videocard, format: :json)
