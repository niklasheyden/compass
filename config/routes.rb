Rails.application.routes.draw do
  devise_for :users
  root to: 'weeks#current_week'

  resources :user do
    resources :weeks, only: [:index, :show, :create]
  end
end
