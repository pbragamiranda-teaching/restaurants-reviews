Rails.application.routes.draw do
  resources :restaurants do

    collection do
      # restauranst/top
      get :top
    end

    member do
      # restaurant/id/chef
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [ :destroy ]

end

# routes -> controller -> view
