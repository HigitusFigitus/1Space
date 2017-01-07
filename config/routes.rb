Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :texts, only: [:index]
    end
  end

  root 'pages#home'
  get 'pages/home'
  post 'api/v1/texts', to: 'api/v1/texts#index'
end
