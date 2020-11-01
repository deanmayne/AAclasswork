Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats
  resources :cat_rental_requests, only: [:create,:new]
  get '/cat_rental_requests', to 'CatRentalRequest#deny'
  get '/cat_rental_requests', to 'CatRentalRequest#approve'
end
