Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :equipements
      resources :location_options
      resources :options
      resources :equipement_categories
    end
  end

  mount ActionCable.server => '/chat'
  resources :messages, only: %i(index create)
end
