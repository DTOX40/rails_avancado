Rails.application.routes.draw do
  resources :clientes

  get 'stimulus', to: 'spa#index'
  root 'home#index'

  get 'fornecedores', to: 'fornecedores#index'
  get 'fornecedores/novo', to: 'fornecedores#novo', as: 'fornecedores_novo'

  post 'fornecedores', to: 'fornecedores#cadastrar', as: 'fornecedores_cadastrar'
  
end
