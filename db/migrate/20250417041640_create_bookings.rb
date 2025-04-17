class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.decimal :total_amount
      t.decimal :discount_amount
      t.decimal :final_amount
      t.text :notes

      t.timestamps
    end
  end
end
