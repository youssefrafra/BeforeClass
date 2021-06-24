Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :games, only: [:index,:show]
  resources :questions , only: [:index]
  get 'my_devschools', to: "profiles#my_devschools"
  # patch 'games/:id', to: "games#unlock"
  patch 'games/:id', to: "games#complete"
end
