class CreateBudgetCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :budget_categories do |t|
      t.string :name
      t.decimal :budgeted
      t.decimal :spent
      t.decimal :pending
      t.decimal :balance

      t.timestamps
    end
  end
end
