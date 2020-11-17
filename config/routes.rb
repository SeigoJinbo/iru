Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:new, :create, :read, :edit, :update]
  resources :event do
    resources :enrollments, only: [:new, :create]
  end
  resources :enrollments, only: [:update, :destroy]
end
