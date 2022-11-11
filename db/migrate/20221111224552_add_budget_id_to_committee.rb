class AddBudgetIdToCommittee < ActiveRecord::Migration[6.1]
  def change
    remove_column :committees, :budget, :decimal
    add_column :committees, :budget_id, :integer
  end
end
