Rails.application.routes.draw do
resources :characters, only: [:index, :show]

resources :about

resources :search, only: [:index] do
  collection do
  get 'results'
  end
end

get 'search', to: 'search#index'
get 'search/results', to: 'search#results'

  get 'characters/index'
  get 'characters', to: 'characters#index'
  root to: 'characters#index'
  
  get 'characters/:id', to: 'characters#show', id: /\d+/


  get 'about/index'
  get 'about', to: 'about#index'
  root to: 'about#index'


  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
