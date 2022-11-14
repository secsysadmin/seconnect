class UpdateRequestsToBudgetRelation < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :budget_id, :integer
    remove_column :requests, :category, :string
    remove_column :requests, :subcategory, :string
    add_column :requests, :budget_subcategory_id, :integer
  end
end
