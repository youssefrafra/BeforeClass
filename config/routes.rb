Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # devise_for :users, except: :registrations
  root to: 'pages#home'
  get "dashboard", to: 'pages#dashboard', as: :dashboard
  resources :games, only: [:index,:show]
  resources :questions , only: [:index]
  get 'my_devschools', to: "profiles#my_devschools"
  # patch 'unlock', to: "profiles#unlock!"
  # patch 'complete', to: "profiles#complete!"
  post '/save', to: "questions#save"
  # patch 'games/:id', to: "games#unlock"
  patch 'games/:id', to: "games#complete"
  post 'games', to: "games#create_session"
end
