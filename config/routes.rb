require 'sidekiq/web'

Rails.application.routes.draw do
  get 'authors/index'
  get 'authors/show'
  get 'authors/new'
  get 'authors/create'
  get 'authors/edit'
  get 'authors/update'
  get 'authors/destroy'
  resources :orders
  # resources :paymentmethods
  resources :customers
  resources :products
  resources :productcategories
  resources :suppliers
  resources :library_s
  resources :booklists
  resources :types
  resources :authors
  resources :borrows

  get 'sessions/new' 
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :users, only: [:new, :create]
  get 'sign_up', to: 'devise/registrations#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  resources :payments, only: [:new, :create]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'mingg#home'
end
