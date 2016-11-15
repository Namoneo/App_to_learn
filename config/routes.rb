Rails.application.routes.draw do

  #resources :words
  root "users#index"
  resources :users, only: [:index] do
      resources :words, only: [:index, :create, :destroy]
  end
#root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
