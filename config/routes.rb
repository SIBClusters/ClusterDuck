ClusterDuck::Application.routes.draw do

  root :to => "groups#index" #we'll probably have to change this

  devise_for :users

  resources :groups

  resources :users, :except => :destroy


end
