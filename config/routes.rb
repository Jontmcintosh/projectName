Rails.application.routes.draw do
  get 'characters/index'
  get 'characters/show'
  get 'dogs', to: 'dogs#index'
  root to: 'dogs#index'
  get 'dogs/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
