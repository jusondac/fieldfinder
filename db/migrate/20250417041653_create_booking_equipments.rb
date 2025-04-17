class CreateBookingEquipments < ActiveRecord::Migration[8.0]
  def change
    create_table :booking_equipments do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :price_per_unit
      t.decimal :total_price

      t.timestamps
    end
  end
end
