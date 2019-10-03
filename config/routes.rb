Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :resources
      resources :journals
    end
  end
  
end
