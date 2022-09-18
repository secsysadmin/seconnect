class CreateCommittees < ActiveRecord::Migration[6.1]
  def change
    create_table :committees do |t|
      t.string :committee_name
      t.decimal :budget
      t.integer :user_id

      t.timestamps
    end
  end
end
