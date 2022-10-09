Rails.application.routes.draw do
  resources :committees
  resources :vendors
  resources :budget_subcategories
  resources :users #, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :requests

  root 'sessions#login'

  # Sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  #get '/requests', to: 'sessions#requests'

  get '/home', to: 'sessions#home'
  get '/admin_requests', to: 'admin_requests#index'
  get '/auth/google_oauth2/callback', to: 'session#omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
