class RemoveUserIdFromCommittee < ActiveRecord::Migration[6.1]
  def change
    remove_column :committees, :user_id, :integer
  end
end
