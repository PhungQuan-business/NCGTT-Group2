require 'sidekiq/web'

Rails.application.routes.draw do
  resources :orders
  resources :paymentmethods
  resources :customers
  resources :products
  resources :productcategories
  resources :suppliers
  get 'sessions/new' 
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get 'users/create'
  resources :borrows
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :library_s
  get 'library/System'
  get 'library/Management'
  get 'library/home'
  resources :booklists
  resources :types
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  resources :users, only: [:new, :create]
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'welcome', to: 'sessions#welcome'
  resources :payments, only: [:new, :create]
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to:'mingg#home'
end

