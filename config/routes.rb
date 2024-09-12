Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts, only: [:index] do
    collection do
      get :search
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
