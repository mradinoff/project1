Rails.application.routes.draw do
  root :to => 'pages#home'

  get'/comments/index' => 'comments#index'
  get'/accounts/index' => 'accounts#index'
  get'/places/index' => 'places#index'
  resources :accounts
  resources :places
  resources :comments

  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out
  # See rails guide for routing, in particular nested routes
end
