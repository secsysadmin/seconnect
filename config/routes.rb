require 'pry'
Rails.application.routes.draw do
  resources :budget_categories
  resources :budgets
  resources :creditcards
  resources :committees
  resources :vendors
  resources :budget_subcategories
  resources :users #, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :requests
  resources :admin_requests
  resources :invoices
  resources :receipts

  root 'sessions#login'

  # Sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  #get '/requests', to: 'sessions#requests'

  get '/admin_home', to: 'sessions#admin_home'
  get '/user_home', to: 'sessions#user_home'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/financial_forms', to: 'sessions#financial_forms'
  # delete 'vendors/:id', to: 'vendors#destroy' # destroy
  # delete 'budget_subcategories/:id', to: 'budget_subcategories#destroy' # destroy
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  if Rails.env.test?
    get '/login_user', to: 'sessions#createuser'
    get '/login_admin', to: 'sessions#createadmin'
  else
    
  end
end
