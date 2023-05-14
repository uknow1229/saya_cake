class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name, null: false
      t.string :description, null: false
      t.integer :price_without_tax, null: false
      t.integer :sales_status, null: false

      t.timestamps
    end
  end
end
