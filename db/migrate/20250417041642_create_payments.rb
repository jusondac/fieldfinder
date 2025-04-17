class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.references :booking, null: false, foreign_key: true
      t.decimal :amount
      t.string :payment_method
      t.string :transaction_id
      t.string :status
      t.datetime :payment_date

      t.timestamps
    end
    add_index :payments, :transaction_id, unique: true
  end
end
