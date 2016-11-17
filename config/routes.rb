Rails.application.routes.draw do

  resources :texts
  #resources :words
  root "texts#index"

  resources :words

  resources :users
#root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
