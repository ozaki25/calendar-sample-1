Rails.application.routes.draw do
  resources :requests
  resources :licenses
  resource :lending_histories,path: 'lendings_calendar' , only: %i(show)
  root to: 'lending_histories#show'
end
