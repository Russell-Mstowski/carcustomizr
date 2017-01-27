Rails.application.routes.draw do

  root 'pages#index'
  get '/home' => 'pages#home'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/cars' => 'cars#index'
  get '/cars/new' => 'cars#new'
  post '/cars' => 'cars#create'
  get '/cars/:id' => 'cars#show'
  get '/cars/:id/edit' => 'cars#edit'
  patch '/cars/:id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'
  get '/threedmodel' => 'cars#threedmodel'

  get '/customizations' => 'customizations#index'
  get '/customizations/new' => 'customizations#new'
  post '/customizations' => 'customizations#create'
  get '/customizations/:id' => 'customizations#show'
  get '/customizations/:id/edit' => 'customizations#edit'
  patch '/customizations/:id' => 'customizations#update'
  delete '/customizations/:id' => 'customizations#destroy'

  post '/comments' => 'comments#create'

  namespace :api do
    namespace :v1 do
      get '/customizations' => 'customizations#index'
      get '/customizations/:id' => 'customizations#show'
    end
  end
end
