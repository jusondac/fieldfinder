json.extract! booking, :id, :user_id, :facility_id, :start_time, :end_time, :status, :total_amount, :discount_amount, :final_amount, :notes, :created_at, :updated_at
json.url booking_url(booking, format: :json)
