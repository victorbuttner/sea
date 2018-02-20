json.extract! order, :id, :user_id, :client_id, :product_id, :status, :sub_total, :price_total, :created_at, :updated_at
json.url order_url(order, format: :json)
