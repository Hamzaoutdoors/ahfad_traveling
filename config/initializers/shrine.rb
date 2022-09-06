require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: ENV['dixhpc2bp'],
  api_key:    ENV['941781496136243'],
  api_secret: ENV['_bSJeum4FFBGn89y6cX8ba0NLO4'],
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "test_app/cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "test_app"),
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data
Shrine.plugin :validation_helpers
Shrine.plugin :validation