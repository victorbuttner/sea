class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :item_amount
      t.float :item_price

      t.timestamps
    end
  end
end
