Rails.application.routes.draw do
  root 'articles#index'
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  end
  get '/user', to: 'users#new'
  resources :user
  
end
