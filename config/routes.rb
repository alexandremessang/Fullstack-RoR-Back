Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controller: {
        token_validations: 'overrides/token_validations'
      }
      resources :locations
      resources :equipements
      resources :location_options
      resources :options
      resources :equipement_categories
      resources :users
    end
  end

  mount ActionCable.server => '/chat'
  resources :messages, only: %i[index create]
end
