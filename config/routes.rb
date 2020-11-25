Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:new, :index, :show, :create, :read, :edit, :update]
  resources :organizations, only: [:index, :show, :new, :create, :edit, :update] do
    resources :events, only: [:new, :create, :edit, :update]
    resources :organization_comments, only: [:new, :create]
  end
  resources :events, only: [:index, :show, :destroy] do
    resources :enrollments, only: [:new, :create]
    resources :donations, only: [:new, :create, :show]
    resources :event_comments, only: [:new, :create]
  end
  resources :enrollments, only: [:update, :destroy]
  resources :donations, only: [:update, :destroy, :show]
  resources :organization_comments, only: [:update, :destroy]
  resources :event_comments, only: [:update, :destroy]
  get '/map', to: 'events#map', as: :map

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
