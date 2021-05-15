class RefactorModelItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :order_id, :bigint
    add_reference :items, :sub_items, index: true, foreign_key: true
  end
end
