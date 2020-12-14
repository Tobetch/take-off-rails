Rails.application.routes.draw do
  get 'users/index'
  get 'users/index_api'
  resources :articles
  get 'homes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
