Rails.application.routes.draw do

  resources :consumers
  resources :products
  resources :vendors



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
