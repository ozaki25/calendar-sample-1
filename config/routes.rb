Rails.application.routes.draw do
  resources :licenses do
    resources :lending_histories
  end
  root to: 'home#index'
end
