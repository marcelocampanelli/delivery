class CreateSubItems < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_items do |t|
      t.string :external_code
      t.string :name
      t.float :price
      t.integer :quantity
      t.float :total

      t.timestamps
    end
  end
end
