Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: %i[index show new create]
end
