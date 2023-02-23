class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.string :vendor_id
      t.string :tax_id_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :payment_method
      t.string :test
      t.string :notes

      t.timestamps
    end
  end
end
