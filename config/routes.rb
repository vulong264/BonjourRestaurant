Rails.application.routes.draw do
get 'checkout/index'
post 'checkout/confirm'
get 'checkout/confirm' => 'checkout#receipt'

  resources :order_items
  resources :orders
  resources :food_items
get 'checkout' => 'checkout#index'

get 'menu' => 'home#menu'
get 'contact_us' => 'home#contact_us'
	root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
