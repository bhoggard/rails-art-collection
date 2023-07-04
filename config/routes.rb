Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  namespace :admin do
    resources :nationalities
  end
end
