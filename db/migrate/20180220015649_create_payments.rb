class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.string :payment_type
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end
