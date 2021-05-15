class RefactorModelPayments < ActiveRecord::Migration[6.0]
  def change
    rename_column :payments, :modality, :type
    remove_column :payments, :order_id
  end
end
