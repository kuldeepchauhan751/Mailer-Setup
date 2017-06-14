Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/show'
  resources :users
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
