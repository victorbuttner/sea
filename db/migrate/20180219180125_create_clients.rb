class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :cpf_cnpj
      t.string :rg
      t.date :birth_date
      t.string :name
      t.string :sex
      t.string :ocupation
      t.string :civil_status
      t.string :postal
      t.string :street
      t.integer :addr_number
      t.string :street_opt
      t.string :district
      t.string :state
      t.string :city
      t.string :phone1
      t.string :phone2
      t.string :email
      t.boolean :status
      t.string :obs

      t.timestamps
    end
  end
end
