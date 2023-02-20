class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false, foreign_key: true
      t.string :address, null: false
      t.string :post_code, null: false
      t.string :name, null: false
      t.integer :pay_type, null: false, default: 0
      t.integer :order_status, null: false, default: 0
      t.integer :billing_amount, null: false
      t.integer :postage, null: false

      t.timestamps
    end
  end
end
