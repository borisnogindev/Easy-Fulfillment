class Product < ActiveRecord::Base
  validates_uniqueness_of :shopify_id
  #validates :ebay_url, format: { with: /http:\/\/www\.ebay\.com.+/, message: "%{value} is not a correct eBay URL" }
  belongs_to :shop
end
