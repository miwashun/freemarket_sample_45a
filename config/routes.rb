Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items do
    collection do
      get :search
    end
    resources :images, only: [:index, :new, :edit, :create, :destroy]
    member do
      get :purchase, :detail
      post :done
    end
  end

  resources :categories, only: [:index, :show]
  resources :users, only: [:show] do
    resources :cards, only: [:index, :new, :create, :destroy]
    resources :addresses, only: [:new, :create, :edit, :update]
    collection do
      get :before_sign_up, :identification, :profile, :logout
    end
  end

  resources :brands, only: [:index, :show]
end

