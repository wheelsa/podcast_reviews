Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :genres
    end
  resources :genres do
    resources :podcasts
  end 

  
end
