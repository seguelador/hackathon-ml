json.extract! item, :id, :title, :subtitle, :category_id, :initial_quantity, :available_quantity, :sold_quantity, :description, :price, :condition, :created_at, :updated_at
json.url item_url(item, format: :json)