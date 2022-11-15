# frozen_string_literal: true

json.extract!(budget, :id, :budget_name, :budget_amount, :created_at, :updated_at)
json.url(budget_url(budget, format: :json))
