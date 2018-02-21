Rails.application.routes.draw do
  devise_for :users
  root 'storefront#all_items'

  get 'categorical' =>'storefront#items_by_category'

  get 'brinding' => 'storefront#items_by_brand'

# generates 7 routes for 5 product views
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
