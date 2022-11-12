class AddAdditionalInfoToBudgets < ActiveRecord::Migration[6.1]
  def change
    add_column :budgets, :fiscal_year, :string
    add_column :budgets, :active, :boolean
    add_column :budgets, :locked, :boolean
    add_column :budgets, :default, :boolean
  end
end
