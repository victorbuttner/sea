json.extract! report_orders_by_user, :id, :date_start, :date_end, :file_path, :created_at, :updated_at
json.url report_orders_by_user_url(report_orders_by_user, format: :json)
