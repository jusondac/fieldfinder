json.extract! payment, :id, :booking_id, :amount, :payment_method, :transaction_id, :status, :payment_date, :created_at, :updated_at
json.url payment_url(payment, format: :json)
