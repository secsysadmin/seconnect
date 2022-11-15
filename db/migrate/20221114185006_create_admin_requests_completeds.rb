class CreateAdminRequestsCompleteds < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_requests_completeds do |t|

      t.timestamps
    end
  end
end
