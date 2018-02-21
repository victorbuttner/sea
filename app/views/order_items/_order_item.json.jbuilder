json.extract! order_item, :id, :product_id, :item_amount, :item_price, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
