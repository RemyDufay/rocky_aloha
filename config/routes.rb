Rails.application.routes.draw do
  get 'rocks/index'
  get 'rocks/create'
  get 'rocks/new'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
