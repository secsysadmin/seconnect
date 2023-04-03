# frozen_string_literal: true

json.extract!(request, :id, :user_id, :budget_id, :category, :subcategory, :tax_category, :gift,
              :cost, :items_purchased, :type, :vendor_id, :created_at, :updated_at
)
json.url(request_url(request, format: :json))
