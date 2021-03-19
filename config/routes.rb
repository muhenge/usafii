Rails.application.routes.draw do
  # namespace :v1 do
  #   get 'appointments/index'
  #   get 'appointments/show'
  #   get 'appointments/new'
  #   get 'appointments/create'
  #   get 'appointments/destroy'
  # end
  devise_for :clients, controllers: {
    session: 'clients_sessions',
    registrations: 'clients_registrations'
  }

  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

    namespace 'v1' do
      resources :users
      resources :appointments
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
