class CreateCostomers < ActiveRecord::Migration[7.0]
  def change
    create_table :costomers do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.string :email, null: false
      t.integer :post_code, null: false
      t.string :customer_adress, null: false
      t.integer :phone_number, null: false
      t.integer :encrypted_password, null: false
      t.integer :customer_status, null: false

      t.timestamps
    end
  end
end
