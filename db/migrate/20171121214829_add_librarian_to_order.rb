class AddLibrarianToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :librarian, foreign_key: true
  end
end
