class CreateAdminRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_requests do |t|

      t.timestamps
    end
  end
end
