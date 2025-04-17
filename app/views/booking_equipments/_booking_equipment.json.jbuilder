json.extract! booking_equipment, :id, :booking_id, :equipment_id, :quantity, :price_per_unit, :total_price, :created_at, :updated_at
json.url booking_equipment_url(booking_equipment, format: :json)
