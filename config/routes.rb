Rails.application.routes.draw do
  resources :users
  resources :groups
  resources :messages
end
