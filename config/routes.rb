Rails.application.routes.draw do
  devise_for :clients, controllers: {
    session: 'clients_sessions',
    registrations: 'clients_registrations'
  }

  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
