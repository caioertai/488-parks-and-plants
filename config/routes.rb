Rails.application.routes.draw do
  root to: "gardens#index"

  resources :gardens, only: :show do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy do
    # /plants/6/taggings/new
    resources :taggings, only: [:new, :create]
  end
end

