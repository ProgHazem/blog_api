Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'users/registrations',
  }
  resources :posts do
    resources :comments, only: %i[create update destroy]
    resources :tags, only: %i[update]
  end
end
