class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :postage, null: false
      t.integer :billing_amount, null: false
      t.integer :payment_method, null: false
      t.integer :order_address, null: false
      t.integer :order_postal_code, null: false
      t.integer :order_name, null: false
      t.integer :order_status, null: false

      t.timestamps
    end
  end
end
