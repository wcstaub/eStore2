Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'
  
  get 'view_order' => 'cart#view_order'

  get 'view_user_orders' => 'cart#view_user_orders'

  get 'checkout' => 'cart#checkout'

  devise_for :users
  root 'storefront#all_items'

  get 'categorical' =>'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

# generates 7 routes for 5 product views
  resources :products

  post 'order_complete' => 'cart#order_complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
