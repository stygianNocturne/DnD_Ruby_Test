Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'main#about'
  get '/contact', to: 'main#contact'
  resources :character
  resources :campaign
  root 'main#index'

end
