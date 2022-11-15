class CreateAtcs < ActiveRecord::Migration[6.1]
  def change
    create_table :atcs do |t|
      t.integer :vendor_id
      t.string :contact_name
      t.numeric :phone
      t.string :email
      t.string :purchase_info
      t.integer :amount
      t.string :notes

      t.timestamps
    end
  end
end
