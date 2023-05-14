class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.integer :price_including_tax, null: false
      t.integer :quantity, null: false
      t.integer :sales_status, null: false

      t.timestamps
    end
  end
end
