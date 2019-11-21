Rails.application.routes.draw do
  resources :votes
  resources :voters
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
