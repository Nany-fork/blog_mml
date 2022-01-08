Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do
    resources :comments
  end
  get '/users', to: "users#new"
  resources :users
end
