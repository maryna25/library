class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :adress
      t.string :email
      t.string :phone_number
      t.integer :lib_ticket_id

      t.timestamps
    end
  end
end
