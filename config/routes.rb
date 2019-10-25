Rails.application.routes.draw do

  resources :food_advisors

  namespace :api do
    namespace :v1 do
      resources :journals
    end
  end
  
  namespace :api do
    namespace :v1 do
      resources :resources
    end
  end

end
