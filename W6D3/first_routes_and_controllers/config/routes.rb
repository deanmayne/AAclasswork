Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create,:destroy,:index, :show, :update]

  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'
  # post 'users', to: 'users#create'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

  resources :artworks, only: [:create,:destroy, :show, :update]
  get '/users/:user_id/artworks', to: 'artworks#index'

  resources :artwork_shares, only: [:create,:destroy]

end
