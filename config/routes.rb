Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :equipements
    end
  end
  namespace :api do
    namespace :v1 do
      resources :equipement_categories
    end
  end

  mount ActionCable.server => '/chat'
  resources :messages, only: %i(index create)
end
