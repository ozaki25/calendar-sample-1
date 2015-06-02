Rails.application.routes.draw do
  resources :licenses
  resources :requests do
    resources :lending_histories
  end
  root to: 'home#index'
end
