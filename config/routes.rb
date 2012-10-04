CarrierwaveDirectExample::Application.routes.draw do
  root :to => 'users#new'
  resources :users, :only => [:new, :create, :show]
  resource :avatar, :only => :new
end
