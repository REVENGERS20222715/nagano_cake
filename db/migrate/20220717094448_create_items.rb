class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.timestamps
      
      t.integer :genre_id
      t.string :name
      t.text :introduction
      t.boolean :is_active, default: true, null: false
      t.integer :price
    end
  end
end
