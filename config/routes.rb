Rails.application.routes.draw do
  get 'home/index'
  resources :games, only: [:index, :show] do
    collection do
      get "search"
    end
  end

  resources :developers, only: [:index, :show]
end
