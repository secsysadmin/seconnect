# frozen_string_literal: true

json.extract!(item, :id, :items_purchased, :budget, :category, :subcategory, :taxcategory, :gift,
              :cost, :created_at, :updated_at
)
json.url(item_url(item, format: :json))
