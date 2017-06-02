Rails.application.routes.draw do
  get 'queries/show'

  get 'queries/new'

  get 'queries/create'

  get 'queries/edit'

  get 'queries/update'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :queries, only: [:new] do
    resources :graph, only: [:show]
  end
end
