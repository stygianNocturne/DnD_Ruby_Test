Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'main#about'
  get '/contact', to: 'main#contact'
  resources :character
  resources :campaign
  resources :category, except: [:index, :show]
  resources :race, except: [:index, :show]
  root 'main#index'

end
