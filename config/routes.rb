Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :organizations, only: [:index, :show, :new, :create, :edit, :update] do
    resources :events, only: [:new, :create, :edit, :update]
  end
  resources :events, only: [:index, :destroy]
end
