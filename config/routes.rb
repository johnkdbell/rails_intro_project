Rails.application.routes.draw do
  resources :games, only: [:index, :show]
  resources :developers, only: [:index, :show]
end
