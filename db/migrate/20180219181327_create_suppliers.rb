class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.integer :company_id
      t.string :cpf_cnpj
      t.string :name
      t.string :end
      t.string :phone
      t.string :email
      t.boolean :status

      t.timestamps
    end
  end
end
