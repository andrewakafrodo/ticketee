EdgeTicketee::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  get '/awaiting_confirmation',
    :to => "users#confirmation",
    :as => 'confirm_user'


  put '/admin/users/:user_id/permissions',
    :to => 'admin/permissions#update',
    :as => :update_user_permissions

  root :to => "projects#index"
  resources :projects do
    resources :tickets
  end
  
  resources :tickets do
    resources :comments
  end

  namespace :admin do
    root :to => "base#index"
    resources :users do
      resources :permissions
    end 
  end
  
  resources :files
end
