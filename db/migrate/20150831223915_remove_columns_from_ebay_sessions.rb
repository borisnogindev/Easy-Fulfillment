class RemoveColumnsFromEbaySessions < ActiveRecord::Migration
  def change 
    remove_column :ebay_sessions, :dev_id
    remove_column :ebay_sessions, :app_id
    remove_column :ebay_sessions, :cert_id
    remove_column :ebay_sessions, :site_id
    remove_column :ebay_sessions, :server_url
    remove_column :ebay_sessions, :compat_level
    remove_column :ebay_sessions, :verb
  end
end
