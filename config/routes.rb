Rails.application.routes.draw do
  devise_for :users
  root to: 'weeks#current_week'

  resources :user do
    resources :weeks, only: [:index, :show, :create]
    get '/dashboard', to: 'pages#dashboard'
    resources :projects, only: [:index, :show, :create]
    resources :life_goals, only: [:index, :show, :create]
  end
end
