ClusterDuck::Application.routes.draw do
resources :statuses

match "/api/update/:network" => "statuses#update"
match "/api/clean" => "statuses#clean"

  root :to => "groups#index" #we'll probably have to change this

  devise_for :users

  resources :groups, :except => [:edit, :show, :update] do
    resources :members, :except => [:edit, :update]
  end

  resources :users, :only => [:show]

end
