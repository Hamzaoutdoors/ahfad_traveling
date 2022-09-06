json.extract! trip, :id, :title, :description, :price, :date_start, :date_end, :image_main, :created_at, :updated_at
json.url trip_url(trip, format: :json)
