# frozen_string_literal: true

json.extract!(budget_category, :id, :name, :budgeted, :spent, :pending, :balance, :created_at,
              :updated_at
)
json.url(budget_category_url(budget_category, format: :json))
