Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  namespace :admin do
    get 'orders/show'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'genres/index'
    get 'genres/edit'
    get 'items/index'
    get 'items/new'
    get 'items/show'
    get 'items/edit'
    get 'homes/top'
    get 'sessions/new'
  end
  scope module: :public do
    get '/' => 'homes#top'
    get 'about' => 'homes#about'
  
    resources :shipping_adresses, only: [:index, :edit, :create, :update, :destroy]
    resources :orders, only: [:new, :show, :create, :index]
    get 'orders/info/:id' => 'orders#show'
    get 'orders/completed/:id' => 'orders#show'
    
    resources :cart_items, only: [:index, :update, :destroy, :create]
    delete 'cart_items/:id/delete' => 'cart_items#destroy'
    delete 'cart_items/clear' => 'cart_items#destroy'
  
    resources :customers, only: [:show, :edit, :update] do
      collection do
        get 'check'
        patch 'withdraw'
      end
    end
  
    get 'customers/sign_in' => 'sessions#new'
    post 'customers/sign_in' => 'sessions#create'
    delete 'customers/sign_out' => 'sessions#destroy'
  
    get 'customers/sign_up' => 'registrations#new'
    post 'customers' => 'registrations#create'
  
    resources :items, only: [:index, :show]
  end
  
  
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
