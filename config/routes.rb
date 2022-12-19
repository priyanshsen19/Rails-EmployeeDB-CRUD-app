Rails.application.routes.draw do
  get 'techskills/new'
  root 'employees#index'
  resources :employees
  resources :techskills, only: [:new, :create, :destroy]
  resources :firms, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
