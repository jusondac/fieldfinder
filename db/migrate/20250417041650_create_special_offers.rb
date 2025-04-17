class CreateSpecialOffers < ActiveRecord::Migration[8.0]
  def change
    create_table :special_offers do |t|
      t.string :name
      t.text :description
      t.decimal :discount_percentage
      t.date :start_date
      t.date :end_date
      t.references :facility, null: false, foreign_key: true
      t.integer :min_hours
      t.string :code
      t.boolean :is_active

      t.timestamps
    end
    add_index :special_offers, :code, unique: true
  end
end
