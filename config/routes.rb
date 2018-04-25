Rails.application.routes.draw do
  resources :homes
  resources :contacts
  resources :checkins
  resources :terminos
  devise_for :admins, path: 'admins'
  resources :arriendos
  resources :informacions
  devise_for :users, path: 'users'
  resources :equipos
  resources :users
  root to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
