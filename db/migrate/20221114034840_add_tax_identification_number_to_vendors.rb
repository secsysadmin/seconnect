class AddTaxIdentificationNumberToVendors < ActiveRecord::Migration[6.1]
  def change
    add_column :vendors, :tax_identification_number, :integer
  end
end
