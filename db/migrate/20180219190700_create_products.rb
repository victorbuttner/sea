class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :cod_prod
      t.string :name
      t.string :category_id
      t.float :buy_price
      t.float :sell_price
      t.integer :amount
      t.string :status
      t.string :type

      t.timestamps
    end
  end
end
