class CreatePagamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagamentos do |t|
      t.integer :entrada_id
      t.date :data_pag
      t.float :valor_pag
      t.boolean :report

      t.timestamps
    end
  end
end
