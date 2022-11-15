class AddRecipientNameToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :recipient_name, :string
    remove_column :requests, :request_type, :string
  end
end
