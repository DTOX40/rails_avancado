Rails.application.routes.draw do
  resources :clientes

  root "home#index"
end
