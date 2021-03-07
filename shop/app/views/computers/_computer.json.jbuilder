json.extract! computer, :id, :name, :description, :brand_id, :category_id, :country_id, :color_id, :os_id, :price, :produced, :width, :height, :created_at, :updated_at
json.url computer_url(computer, format: :json)
