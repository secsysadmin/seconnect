class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.string :user_id
      t.string :vendor_id
      t.string :details
      t.timestamps
    end
  end
end
