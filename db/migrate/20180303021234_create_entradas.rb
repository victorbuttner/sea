class CreateEntradas < ActiveRecord::Migration[5.1]
  def change
    create_table :entradas do |t|
      t.integer :company_id
      t.integer :supplier_id
      t.date :data_nf
      t.date :data_entrada
      t.string :nf
      t.float :valor

      t.timestamps
    end
  end
end
