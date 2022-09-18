class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :budget_id
      t.string :category
      t.string :subcategory
      t.string :tax_category
      t.boolean :gift
      t.decimal :cost
      t.string :items_purchased
      t.string :type
      t.integer :vendor_id

      t.timestamps
    end
  end
end
