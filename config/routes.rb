Rails.application.routes.draw do
  resources :products
  root 'top#main'
  #get 'carts/show'
  #get 'cart_items/new'
  get 'top/main'
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  #get 'products/index'
  #get 'products/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
