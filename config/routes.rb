Rails.application.routes.draw do
  resources :projects do
    resources :tasks, only: [:create, :update]
  end

  # Health check for load balancers / uptime monitors.
  get "up" => "rails/health#show", as: :rails_health_check

  root "projects#index"
end