Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :games, only: [:index,:show]
  resources :questions , only: [:show]
  get 'my_devschools', to: "profiles#my_devschools"
  patch 'unlock', to: "profiles#unlock!"
  patch 'complete', to: "profiles#complete!"
end
