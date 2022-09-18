Rails.application.routes.draw do
  resources :committees
  resources :vendors
  resources :budget_subcategories
  resources :users
  resources :requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
