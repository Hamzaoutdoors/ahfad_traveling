class TripSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :description, :price, :date_start, :date_end, :image_main, :created_at, :updated_at

  
end
