Rails.application.routes.draw do
  resources :chatgroups
  resources :chats
  resources :likes
  resources :comments
  resources :stories
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
