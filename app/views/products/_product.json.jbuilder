json.extract! product, :id, :cod_prod, :name, :category_id, :buy_price, :sell_price, :amount, :status, :type, :created_at, :updated_at
json.url product_url(product, format: :json)
