class CreateEquipment < ActiveRecord::Migration[8.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.decimal :price_per_hour
      t.integer :quantity_available
      t.string :facility_type
      t.boolean :is_active

      t.timestamps
    end
  end
end
