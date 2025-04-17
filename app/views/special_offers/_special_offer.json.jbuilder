json.extract! special_offer, :id, :name, :description, :discount_percentage, :start_date, :end_date, :facility_id, :min_hours, :code, :is_active, :created_at, :updated_at
json.url special_offer_url(special_offer, format: :json)
