Rails.application.routes.draw do
  get 'characters/index'
  get 'characters/show'
  get 'characters', to: 'characters#index'
  root to: 'characters#index'
  get 'characters/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
