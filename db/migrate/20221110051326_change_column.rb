class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :requests, :type, :item
  end
end
