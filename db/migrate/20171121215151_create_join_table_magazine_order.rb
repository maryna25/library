class CreateJoinTableMagazineOrder < ActiveRecord::Migration[5.0]
  def change
    create_join_table :magazines, :orders do |t|
      # t.index [:magazine_id, :order_id]
      # t.index [:order_id, :magazine_id]
    end
  end
end
