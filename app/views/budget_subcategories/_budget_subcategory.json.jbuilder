# frozen_string_literal: true

json.extract!(budget_subcategory, :id, :committee_id, :subcategory_name, :subcategory_amount,
              :created_at, :updated_at
)
json.url(budget_subcategory_url(budget_subcategory, format: :json))
