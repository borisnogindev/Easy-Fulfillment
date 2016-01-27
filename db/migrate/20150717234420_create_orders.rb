class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :shopify_id
      t.integer :order_number
      t.string :name
      t.string :tags
      t.string :email
      t.string :financial_status
      t.boolean :cancelled
      t.string :total_price
      t.string :token

      t.timestamps null: false
    end
  end
end
