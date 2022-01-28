Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
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
