class AddReferencesInOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :address, index: true, foreign_key: true
    add_reference :orders, :customers, index: true, foreign_key: true
    add_reference :orders, :items, index: true, foreign_key: true
    add_reference :orders, :payments, index: true, foreign_key: true
  end
end
