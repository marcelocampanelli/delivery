class RefactorModelItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :order_id, :bigint
  end
end
