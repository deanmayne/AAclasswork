Rails.application.routes.draw do

    resources :users, only: [:new, :create, :show, :destroy]
    resources :goals, only: [:new, :create, :show, :destroy]
    resource :session, only: [:new, :create, :destroy]
    
end
