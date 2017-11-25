class CreateLibrarians < ActiveRecord::Migration[5.1]
  def change
    create_table :librarians do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :passport_code

      t.timestamps
    end
  end
end
