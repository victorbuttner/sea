class CreateReportOrdersByUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :report_orders_by_users do |t|
      t.date :date_start
      t.date :date_end
      t.string :file_path

      t.timestamps
    end
  end
end
