class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.string :country_of_birth
      t.string :country_of_death
      t.integer :year_of_birth
      t.string :gender

      t.timestamps
    end
  end
end
