class DropWebhookEventsTable < ActiveRecord::Migration
  def change
  
    drop_table :webhook_events
  
  end
end
