json.extract! facility, :id, :name, :description, :facility_type, :capacity, :hourly_rate, :is_active, :image_url, :created_at, :updated_at
json.url facility_url(facility, format: :json)
