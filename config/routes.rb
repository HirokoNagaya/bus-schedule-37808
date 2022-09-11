Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  get "tops/schedule"
  resources :posts, only: [:new, :create, :index, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
