json.extract! promo, :id, :yumis, :promo_type, :name, :description, :created_at, :updated_at
json.url promo_url(promo, format: :json)
