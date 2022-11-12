class ReworkBudgets < ActiveRecord::Migration[6.1]
  def change
    remove_column :budgets, :budget_amount, :decimal
    remove_column :budgets, :budget_name, :string
    add_column :budgets, :name, :string
    add_column :budgets, :budgeted, :decimal
    add_column :budgets, :spent, :decimal
    add_column :budgets, :pending, :decimal
    add_column :budgets, :balance, :decimal
    remove_column :budget_subcategories, :subcategory_name, :string
    remove_column :budget_subcategories, :subcategory_amount, :decimal
    add_column :budget_subcategories, :name, :string
    add_column :budget_subcategories, :budgeted, :decimal
    add_column :budget_subcategories, :spent, :decimal
    add_column :budget_subcategories, :pending, :decimal
    add_column :budget_subcategories, :balance, :decimal
  end
end
