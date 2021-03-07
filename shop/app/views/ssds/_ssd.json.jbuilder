json.extract! ssd, :id, :name, :description, :price, :produced, :brand_id, :category_id, :country_id, :volume, :type, :factor, :interface, :controller, :created_at, :updated_at
json.url ssd_url(ssd, format: :json)
