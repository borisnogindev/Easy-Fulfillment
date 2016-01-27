Rails.application.routes.draw do
  #test change
  # get 'product/index' => 'product#index', as: :product_index
  resources :products
  resources :purchase_events

  controller :sessions do
    get 'login' => :new, :as => :login
    post 'login' => :create, :as => :authenticate
    get 'auth/shopify/callback' => :callback
    get 'logout' => :destroy, :as => :logout
  end

  root :to => 'home#index'
  get 'home/index' => 'home#index'

  post 'webhooks/products/create' => 'webhook#product_new'
  post 'webhooks/products/update' => 'webhook#product_updated'
  post 'webhooks/products/delete' => 'webhook#product_deleted'
  post 'webhooks/app/uninstalled' => 'webhooks#app/uninstalled'
  post 'webhooks/shop/updated'    => 'webhooks#shop_updated'
  post 'webhooks/order/created'   => 'webhooks#order_created'
  post 'webhooks/order/deleted'   => 'webhooks#order_deleted'
  post 'webhooks/order/updated'   => 'webhooks#order_updated'
  post 'webhooks/order/paid'      => 'webhooks#order_paid'
  post 'webhooks/order/cancelled' => 'webhooks#order_cancelled'
  post 'webhooks/order/fulfilled' => 'webhooks#order_fulfilled'
  post 'webhooks/order/partially_fulfilled' => 'webhooks#order_partially_fulfilled'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
