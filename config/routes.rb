Rails.application.routes.draw do
  devise_for :users
  resources :character, except: ['index']
  get 'character/list'
  root 'main#index'

end
