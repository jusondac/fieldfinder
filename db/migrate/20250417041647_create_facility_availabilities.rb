class CreateFacilityAvailabilities < ActiveRecord::Migration[8.0]
  def change
    create_table :facility_availabilities do |t|
      t.references :facility, null: false, foreign_key: true
      t.integer :day_of_week
      t.time :open_time
      t.time :close_time
      t.boolean :is_active

      t.timestamps
    end
  end
end
