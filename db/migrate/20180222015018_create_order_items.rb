class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :unitary_price, precision: 12, scale: 3
      t.decimal :total_price, precision: 12, scale: 3

      t.timestamps
    end
  end
end
