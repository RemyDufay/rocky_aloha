Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get 'rocks/index'
  get 'rocks/create'
  get 'rocks/new'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
