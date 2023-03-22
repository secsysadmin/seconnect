class CreateCreditcards < ActiveRecord::Migration[6.1]
  def change
    create_table :creditcards do |t|
      t.integer :user_id
      t.string :vendor
      t.string :payment_link
      t.numeric :phone
      t.string :Confirmation_order
      t.string :reservation_name
      t.string :status
      t.string :travel_password_cc
      t.string :notes
      t.string :amount
      t.string :sop

      t.timestamps
    end
  end
end
