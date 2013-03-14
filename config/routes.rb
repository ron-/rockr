Rockr::Application.routes.draw do
  root :to => 'home#index'

  resources :venues, :only => [:new, :create]
end
