json.extract! notebook, :id, :name, :description, :diagonal, :brand_id, :category_id, :country_id, :color_id, :price, :produced, :os_id, :resolution, :created_at, :updated_at
json.url notebook_url(notebook, format: :json)
