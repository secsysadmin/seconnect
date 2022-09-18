class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
