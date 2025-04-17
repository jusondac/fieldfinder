class CreateMembershipPlans < ActiveRecord::Migration[8.0]
  def change
    create_table :membership_plans do |t|
      t.string :name
      t.text :description
      t.integer :duration_months
      t.decimal :price
      t.decimal :discount_percentage
      t.integer :max_bookings_per_month
      t.boolean :is_active

      t.timestamps
    end
  end
end
