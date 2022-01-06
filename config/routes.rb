Rails.application.routes.draw do
  get 'users/user' 

  root 'articles#index'
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  end
  # delete '/delete/:id', to: "article#delete"
end
