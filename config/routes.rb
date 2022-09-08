Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  get 'tops/index'
  root to: "tops#index"
  resources :posts, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
