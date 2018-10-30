Rails.application.routes.draw do
resources :characters, only: [:index, :show]

  get 'characters/index'
  get 'characters', to: 'characters#index'
  root to: 'characters#index'
  
  get 'characters/:id', to: 'characters#show', id: /\d+/

  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
