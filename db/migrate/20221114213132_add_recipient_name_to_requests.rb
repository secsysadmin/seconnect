class AddRecipientNameToRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :request_type, :string
  end
end
