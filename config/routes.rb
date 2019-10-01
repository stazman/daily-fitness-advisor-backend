Rails.application.routes.draw do
  resources :resources
  namespace :api do
    namespace :v1 do
      resources :journals
    end
  end
  
end
