class CreateMagazines < ActiveRecord::Migration[5.0]
  def change
    create_table :magazines do |t|
      t.string :name
      t.integer :issue_number

      t.timestamps
    end
  end
end
