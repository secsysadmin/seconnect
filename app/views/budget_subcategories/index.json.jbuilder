# frozen_string_literal: true

json.array!(@budget_subcategories, partial: 'budget_subcategories/budget_subcategory',
                                   as: :budget_subcategory
)
