Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :friendships
  resources :users, only: [:index]
  resources :conversations, only: [:index, :create] do
    resources :messages
  end
  root "friendships#index"
end
