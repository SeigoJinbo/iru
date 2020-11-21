Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:new, :index, :show, :create, :read, :edit, :update]
  resources :organizations, only: [:index, :show, :new, :create, :edit, :update] do
    resources :events, only: [:new, :create, :edit, :update]
  end
  resources :events, only: [:index, :destroy] do
    resources :enrollments, only: [:new, :create]
  end
  resources :enrollments, only: [:update, :destroy]

  get '/map', to: 'organizations#map', as: :map

  resources :orders, only: [:show, :create]
end
