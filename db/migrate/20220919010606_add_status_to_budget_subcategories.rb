class AddStatusToBudgetSubcategories < ActiveRecord::Migration[6.1]
  def change
    add_column :budget_subcategories, :status, :string
  end
end
