json.extract! customer, :id, :name, :customerid, :phone, :email, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
