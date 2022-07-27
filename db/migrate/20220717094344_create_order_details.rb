class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|

      t.timestamps
      
      t.integer :order_id
      t.integer :item_id
      t.integer :amount
      t.integer :making_status, null: false, default: 0
      t.integer :price
    end
  end
end
