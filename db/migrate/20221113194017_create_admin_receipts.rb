class CreateAdminReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_receipts do |t|

      t.timestamps
    end
  end
end
