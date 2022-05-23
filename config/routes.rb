Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'rocks/index'
  get 'rocks/create'
  get 'rocks/new'
  get 'home', to: 'rocks#index'
  get 'rocks&params=', to: 'rocks#index'
  get 'rocks/new', to: 'rock#new'
  post 'rocks/new', to: 'rocks#create'
  post 'rocks/:id', to: 'rocks#show'
  get 'rocks/:id', to: 'rocks#show'
  patch 'requests/:id', to: 'requests#show'
  get 'dashboard', to: 'requests#show'
  get 'rocks/:id/edit', to: 'rocks#edit'
  patch 'rocks/:id', to: 'rocks#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
