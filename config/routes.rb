Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :applications, except: [:show]
  end
  resources :applications, only: [:new, :create]
  get '/applications/confirm/:token' => 'applications#confirm_email', as: 'invite_email_confirmation'
end
