Rails.application.routes.draw do
  
  devise_for :users

  root to: 'posts#index'

  namespace :admin do
    resources :posts do
      resources :comments, only: [:index, :destroy], shallow: true
    end
  end

  resources :posts, only: [:index, :show] do
    resources :comments, shallow: true, only: [:index, :create, :update, :destroy]
  end
end
