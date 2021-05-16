class RefactorModelPayments < ActiveRecord::Migration[6.0]
  def change
    remove_column :payments, :order_id
  end
end
