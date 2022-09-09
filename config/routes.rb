Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :posts, only: [:new, :create, :index] do
    resources :messages, only: [:index, :create]
  end
end
