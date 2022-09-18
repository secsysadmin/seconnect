class CreateBudgetSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :budget_subcategories do |t|
      t.integer :committee_id
      t.string :subcategory_name
      t.decimal :subcategory_amount

      t.timestamps
    end
  end
end
