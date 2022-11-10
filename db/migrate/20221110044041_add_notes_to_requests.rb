class AddNotesToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :Notes, :text
  end
end
