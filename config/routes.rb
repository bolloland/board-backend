Rails.application.routes.draw do
  resources :reviews
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# resources :games, only: [:index, :show] do
#   resources :reviews, only: [:show, :update, :destroy]
