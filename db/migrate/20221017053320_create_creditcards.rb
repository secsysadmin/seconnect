class CreateCreditcards < ActiveRecord::Migration[6.1]
  def change
    create_table :creditcards do |t|
      t.integer :user_id
      t.string :committee
      t.date :start_time
      t.date :end_time
      t.string :reason
      t.string :status

      t.timestamps
    end
  end
end
