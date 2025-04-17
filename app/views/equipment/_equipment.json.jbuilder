json.extract! equipment, :id, :name, :description, :price_per_hour, :quantity_available, :facility_type, :is_active, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
