class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :client_id
      t.integer :product_id
      t.string :status
      t.float :sub_total
      t.float :price_total

      t.timestamps
    end
  end
end
