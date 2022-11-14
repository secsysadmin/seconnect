class RemoveCommitteeIdAndStatusFromBudgetSubcategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :budget_subcategories, :committee_id, :integer
    remove_column :budget_subcategories, :status, :string
  end
end
