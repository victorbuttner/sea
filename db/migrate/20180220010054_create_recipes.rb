class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.float :longe_dir_esferico
      t.float :longe_dir_adicao
      t.float :longe_dir_cilindrico
      t.float :longe_dir_eixo
      t.float :longe_esq_esferico
      t.float :longe_esq_cilindrico
      t.float :longe_esq_adicao
      t.float :longe_esq_eixo
      t.float :longe_dp
      t.float :perto_dir_esferico
      t.float :perto_dir_adicao
      t.float :perto_dir_cilindrico
      t.float :perto_dir_eixo
      t.float :perto_esq_esferico
      t.float :perto_esq_cilindrico
      t.float :perto_esq_adicao
      t.float :perto_esq_eixo
      t.float :perto_dp
      t.integer :client_id
      t.string :doctor_name
      t.string :doctor_crm
      t.string :doctor_phone
      t.float :dp_ponte
      t.float :diagonal_maior
      t.string :material
      t.float :valor
      t.float :sinal
      t.date :entrega
      t.string :tipo
      t.integer :product_id

      t.timestamps
    end
  end
end
