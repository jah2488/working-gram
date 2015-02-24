Rails.application.routes.draw do
  resources :comments
  resources :posts

  resources :users do
    member do
      get :dashboard
    end
  end

  root 'dashboard#index'
end
