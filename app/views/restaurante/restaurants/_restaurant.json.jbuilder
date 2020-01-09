json.extract! restaurant, :id, :rif, :name, :address, :zip_code, :description, :start_time, :end_time, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
