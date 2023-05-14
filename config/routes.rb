Rails.application.routes.draw do
  resources :shipping_adresses, only: [:index, :edit, :create, :update, :destroy]
  resources :orders, only: [:new, :show, :create, :index]
  get 'orders/info/:id' => 'orders#show'
  get 'orders/completed/:id' => 'orders#show'
  
  resources :cart_items, only: [:index, :update, :destroy, :create]
  delete 'cart_items/:id/delete' => 'cart_items#destroy'
  delete 'cart_items/clear' => 'cart_items#destroy'

  resources :customers, only: [:show, :edit, :update]
  get 'customers/confirm_withdraw' => 'customers#show'
  patch 'customers/withdraw' => 'customers#update'

  get 'customers/sign_in' => 'sessions#new'
  post 'customers/sign_in' => 'sessions#create'
  delete 'customers/sign_out' => 'sessions#destroy'

  home
  get 'registrations/new'
  get 'registrations/create'
  get 'items/index'
  get 'items/show'
  get 'homes/top'
  get 'homes/about'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
