Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  get "tops/schedule"
  get "graphs/graph"
  resources :posts, only: [:new, :create, :index, :destroy] do
    resources :messages, only: [:index, :create]
  end
  resources :destinations, only: [:new, :create]
end
