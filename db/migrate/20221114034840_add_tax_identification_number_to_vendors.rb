class AddTaxIdentificationNumberToVendors < ActiveRecord::Migration[6.1]
  def change
    add_column :vendors, :tax_id, :integer
  end
end
