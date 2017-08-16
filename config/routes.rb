Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  #user account information
  resources :users, only: [:show, :edit, :update]

  # graphs nested in queries as the graph is the result of one query
  resources :queries, only: [:show, :new, :create, :edit] do
    resources :graph, only: [:show, :new, :create, :edit, :update]
  end
end
