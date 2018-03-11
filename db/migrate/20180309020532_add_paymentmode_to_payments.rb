class AddPaymentmodeToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :payment_mode, :string
  end
end
