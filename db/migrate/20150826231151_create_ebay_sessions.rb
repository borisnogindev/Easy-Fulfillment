class CreateEbaySessions < ActiveRecord::Migration
  def change
    create_table :ebay_sessions do |t|
      t.string :dev_id
      t.string :app_id
      t.string :cert_id
      t.string :server_url
      t.string :compat_level
      t.string :site_id
      t.string :verb

      t.timestamps null: false
    end
  end
end
