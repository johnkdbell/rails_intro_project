Rails.application.routes.draw do
  resources :games, only: [:index, :show] do
    collection do
      get "search"
    end
  end

  resources :developers, only: [:index, :show]


  root to: "home#index"
end
