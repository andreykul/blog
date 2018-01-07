Rails.application.routes.draw do
  
  get 'posts/index'

  get 'posts/show'

  devise_for :users

  root to: 'posts#index'

  get 'posts', to: 'posts#index'
  get ':post_slug', to: 'posts#show', as: :post

end
