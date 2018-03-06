class AddEntradaToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :entrada_id, :integer
  end
end
