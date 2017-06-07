json.extract! customer, :id, :name, :cnpj, :email, :telephone, :fantasy_name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
