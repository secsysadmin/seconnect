class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.string :vendor_title
      t.string :vendor_taxid
      t.string :vendor_address
      t.string :vendor_city
      t.string :vendor_state
      t.string :vendor_zip
      t.string :vendor_paymentmethod
      t.timestamps
    end
  end
end
