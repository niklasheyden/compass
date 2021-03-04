Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :user do
    resources :weeks, only: [:index, :show, :create]
  end
end
