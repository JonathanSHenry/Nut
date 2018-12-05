Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/search', to: 'static_pages#search'
  get '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/new_restaurant', to: 'restaurants#new'
  post '/new_restaurant', to: 'restaurants#create'
  resources :users
  resources :restaurants
end
