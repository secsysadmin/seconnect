class AddCategoryAndSubcategoryId < ActiveRecord::Migration[6.1]
  def change
    add_column :budget_categories, :budget_id, :integer
    add_column :budget_subcategories, :budget_category_id, :integer
  end
end
