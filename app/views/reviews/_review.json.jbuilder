json.extract! review, :id, :booking_id, :user_id, :facility_id, :rating, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
