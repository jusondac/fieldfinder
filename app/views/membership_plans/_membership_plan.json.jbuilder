json.extract! membership_plan, :id, :name, :description, :duration_months, :price, :discount_percentage, :max_bookings_per_month, :is_active, :created_at, :updated_at
json.url membership_plan_url(membership_plan, format: :json)
