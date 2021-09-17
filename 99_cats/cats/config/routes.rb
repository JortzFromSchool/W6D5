Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats, only: [:index, :show, :edit, :update, :create, :new]
  resources :cat_rental_requests, only: [:show, :new, :create]
end
