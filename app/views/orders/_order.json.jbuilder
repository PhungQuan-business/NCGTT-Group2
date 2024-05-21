json.extract! order, :id, :orderid, :customer_id, :product_id, :orderdate, :paymentmethod_id, :created_at, :updated_at
json.url order_url(order, format: :json)
