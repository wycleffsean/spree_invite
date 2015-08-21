Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :applications, except: [:show]
  end
  resources :applications, only: [:new, :create]
end
