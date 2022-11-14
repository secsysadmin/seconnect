class ChangeTypeColumnNameInRequest < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :type, :string
    add_column :requests, :request_type, :string
  end
end
