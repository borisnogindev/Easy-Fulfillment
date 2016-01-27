class WebhookController < ApplicationController

  skip_before_filter :verify_authenticity_token
  
  #before_filter :verify_webhook

  def product_new
    #shop = Shop.find_by_shopify_domain(ShopifyAPI::Shop.current.domain)
    product = Product.new(:name => params["title"], :shopify_id => params["id"]) #, :shop => shop)
    product.save
    head :ok
  end

  def product_updated
    product = Product.where('shopify_id = ?', params["id"]).first
    if product
      product.name = params["title"]
      product.price = params["price"]
      product.save
    end
    head :ok
  end

  def product_deleted
    product = Product.where('shopify_id = ?', params["id"]).first
    product.destroy
    head :ok
  end

  def app_uninstalled
    shop = Shop.find_by_shopify_domain(ShopifyAPI::Shop.current.domain)
    shop.destroy
  end

  def shop_updated
  end

  def order_created
  end

  def order_deleted
  end

  def order_updated
  end

  def order_paid
  end

  def order_cancelled
  end

  def order_fulfilled
  end

  def order_partially_fulfilled
  end 

  private

  def verify_webhook
    data = request.body.read.to_s
    #hmac_header = request.headers['HTTP_X_SHOPIFY_HMAC_SHA256']
    digest  = OpenSSL::Digest::Digest.new('sha256')
    calculated_hmac = Base64.encode64(OpenSSL::HMAC.digest(digest, SyncApp::Application.config.shopify.secret, data)).strip
    unless calculated_hmac == hmac_header
      head :unauthorized
    end
    request.body.rewind
  end

end
