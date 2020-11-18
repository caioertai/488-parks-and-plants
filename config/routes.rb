Rails.application.routes.draw do
  root to: "gardens#index"

  resources :gardens, only: :show
end
