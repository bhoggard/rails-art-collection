Rails.application.routes.draw do
  resources :nationalities
  devise_for :users
  root "pages#index"
end
