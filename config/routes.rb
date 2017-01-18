Rails.application.routes.draw do
  devise_for :users
  resources :character
  root 'main#index'

end
