Rails.application.routes.draw do
  resources :usuario_personagems
  resources :personagems
  resources :users
  root "hello#index"
end
