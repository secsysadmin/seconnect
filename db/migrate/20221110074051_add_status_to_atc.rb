class AddStatusToAtc < ActiveRecord::Migration[6.1]
  def change
    add_column :atcs, :status, :string
  end
end
