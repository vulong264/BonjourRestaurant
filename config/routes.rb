Rails.application.routes.draw do
get 'menu' => 'home#menu'
get 'contact_us' => 'home#contact_us'
	root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
