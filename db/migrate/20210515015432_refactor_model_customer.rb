class RefactorModelCustomer < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :order_id, :bigint
    remove_column :customers, :external_id, :string
    add_column :customers, :external_code, :string
  end
end
