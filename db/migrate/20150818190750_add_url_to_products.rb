class AddUrlToProducts < ActiveRecord::Migration
  def change

    add_column :products, :ebay_url, :string

  end
end
