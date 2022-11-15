# frozen_string_literal: true

json.array!(@budget_categories, partial: 'budget_categories/budget_category', as: :budget_category)
