Rails.application.routes.draw do
  resources :requests
  resources :licenses
  resources :lending_histories
  root to: 'home#index'
end
