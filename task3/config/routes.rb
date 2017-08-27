Rails.application.routes.draw do
  root "numbers#index"
  resources :numbers
end
