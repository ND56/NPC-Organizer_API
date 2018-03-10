# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :npcs, except: %i[new edit]
  # gives:
  # get '/npcs' => 'npcs#index'
  # get '/npcs/:id' => 'npcs#show'
  # delete '/npcs/:id' => 'npcs#destroy'
  # patch '/npcs/:id' => 'npcs#update'
  # post '/npcs' => 'npcs#create'
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  get '/npcs/search-by-name' => 'npcs#search_by_name'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
