class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :shopify_id
      t.boolean :logical_delete
      t.integer :shop_id

      t.timestamps null: false
    end
  end
end
