Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  # resources :articles
  # get 'welcome/index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources:articles
  # resources :comments
  resources :articles do
    resources :comments
  end
end