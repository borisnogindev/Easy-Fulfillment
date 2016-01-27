class CreateWebhookEvents < ActiveRecord::Migration
  def change
    create_table :webhook_events do |t|
      t.string :event_type
      t.text :description
      t.integer :product_id
      t.boolean :logical_delete
      t.datetime :created_at
      t.datetime :updated_at
      t.text :url

      t.timestamps null: false
    end
  end
end
