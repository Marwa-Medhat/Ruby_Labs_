Rails.application.routes.draw do
  root 'welcome#index'
  # get 'api/articles', to: "articles#indexweb1"

  devise_for :users
  # resources :articles
  # get 'welcome/index'

  # devise_for :users, controllers: {sessions: "sessions"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources:articles
  # resources :comments
  # Rails.application.routes.draw do
    resource :users, only: [:create]
    post "/login", to: "users#login"
    get "/auto_login", to: "users#auto_login"
  # end
  
  resources :articles do
    resources :comments
  end
end
