require 'pry'
Rails.application.routes.draw do
  resources :invoices
  resources :admin_receipts
  resources :atcs
  resources :budget_categories
  resources :budgets
  resources :creditcards
  resources :committees
  resources :vendors
  resources :budget_subcategories
  resources :users #, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :requests
  resources :admin_requests
  resources :receipts

  root 'sessions#login'

  #filtered pages
  get '/creditcard_approved', to: 'creditcards#approved'
  get '/creditcard_inprogress', to: 'creditcards#inprogress'
  get '/atc_approved', to: 'atcs#approved'
  get '/atc_inprogress', to: 'atcs#inprogress'
  get '/request_approved', to: 'requests#approved'
  get '/request_inprogress', to: 'requests#inprogress'

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
