json.extract! product, :id, :name, :description, :price, :ingredient, :available, :quantity, :supplier_id, :productcategory_id, :created_at, :updated_at
json.url product_url(product, format: :json)
