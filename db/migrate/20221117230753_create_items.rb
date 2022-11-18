class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :invoice, null: false, foreign_key: true
      t.string :items_purchased
      t.string :budget
      t.string :category
      t.string :subcategory
      t.string :taxcategory
      t.boolean :gift
      t.float :cost

      t.timestamps
    end
  end
end
