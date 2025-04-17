# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_17_041653) do
  create_table "booking_equipments", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "equipment_id", null: false
    t.integer "quantity"
    t.decimal "price_per_unit"
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_equipments_on_booking_id"
    t.index ["equipment_id"], name: "index_booking_equipments_on_equipment_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "facility_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "status"
    t.decimal "total_amount"
    t.decimal "discount_amount"
    t.decimal "final_amount"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_bookings_on_facility_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price_per_hour"
    t.integer "quantity_available"
    t.string "facility_type"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "facility_type"
    t.integer "capacity"
    t.decimal "hourly_rate"
    t.boolean "is_active"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facility_availabilities", force: :cascade do |t|
    t.integer "facility_id", null: false
    t.integer "day_of_week"
    t.time "open_time"
    t.time "close_time"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_facility_availabilities_on_facility_id"
  end

  create_table "membership_plans", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "duration_months"
    t.decimal "price"
    t.decimal "discount_percentage"
    t.integer "max_bookings_per_month"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.decimal "amount"
    t.string "payment_method"
    t.string "transaction_id"
    t.string "status"
    t.datetime "payment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["transaction_id"], name: "index_payments_on_transaction_id", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "user_id", null: false
    t.integer "facility_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["facility_id"], name: "index_reviews_on_facility_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "special_offers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "discount_percentage"
    t.date "start_date"
    t.date "end_date"
    t.integer "facility_id", null: false
    t.integer "min_hours"
    t.string "code"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_special_offers_on_code", unique: true
    t.index ["facility_id"], name: "index_special_offers_on_facility_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "role"
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "booking_equipments", "bookings"
  add_foreign_key "booking_equipments", "equipment"
  add_foreign_key "bookings", "facilities"
  add_foreign_key "bookings", "users"
  add_foreign_key "facility_availabilities", "facilities"
  add_foreign_key "payments", "bookings"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "facilities"
  add_foreign_key "reviews", "users"
  add_foreign_key "sessions", "users"
  add_foreign_key "special_offers", "facilities"
end
