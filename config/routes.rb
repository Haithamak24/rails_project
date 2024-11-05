Rails.application.routes.draw do
  # RESTful route for posts index
  resources :posts, only: [:index]

  # Health check route for monitoring app status
  get "up" => "rails/health#show", as: :rails_health_check

  # Optional: Defines the root path route ("/")
  # Uncomment the line below to make posts#index the homepage
  # root "posts#index"
end
