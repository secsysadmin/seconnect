class AddRecipientNameToCreditCardAndAtc < ActiveRecord::Migration[6.1]
  def change
    add_column :creditcards, :recipient_name, :string
    add_column :atcs, :user_id, :integer
    remove_column :creditcards, :vendor, :string
    add_column :creditcards, :vendor_id, :integer
    remove_column :creditcards, :phone, :decimal
    add_column :creditcards, :phone, :integer
  end
end
