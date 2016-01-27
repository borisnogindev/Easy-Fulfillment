class Shop < ActiveRecord::Base
  has_many :products
  after_create :init_webhooks, :get_products

  def get_products

    shopify_session

    limit = 40
    all_products = Array.new
    products = ShopifyAPI::Product.find(:all, :params => {:limit => limit})
    all_products = all_products.concat products
    puts products.length
    while products.length == limit do
      since_id = products.last.id
      products = ShopifyAPI::Product.find(:all, :params => {:limit => limit, :since_id => since_id})
      all_products = all_products.concat products
    end

    all_products.each do |product|
      unless Product.where('shopify_id = ?', product.id).exists?

        image = product.images.first
        image_src = image.src

        Product.new(:name => product.title, :shopify_id => product.id, #:price => product.variants.price, 
                    :image => image_src, :shop => self).save
      end
    end
  end

  def init_webhooks

    shopify_session

    topics = ["products/create", "products/update", "products/delete", "app/uninstalled", "shop/update",
              "order/create", "order/delete", "order/update", "order/paid", "order/cancelled", "order/fulfilled", "order/partially_fulfilled"]

    topics.each do |topic|
      ShopifyAPI::Webhook.create(:format => "json", :topic => topic, :address => "https://natparksdev.pagekite.me/webhooks/#{topic}")
    end
  end

  def shopify_session
    shop_session = ShopifyAPI::Session.new(self.shopify_domain, self.shopify_token)
    ShopifyAPI::Base.activate_session(shop_session)
  end

end
