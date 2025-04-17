class CreateFacilities < ActiveRecord::Migration[8.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.string :facility_type
      t.integer :capacity
      t.decimal :hourly_rate
      t.boolean :is_active
      t.string :image_url

      t.timestamps
    end
  end
end
