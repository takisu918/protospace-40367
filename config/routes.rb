Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes do
    resources :comments, only: :create
  end
  resources :prototypes, only: [:create, :new, :show, :edit, :update, :destroy]
  resources :users, only: :show

end
