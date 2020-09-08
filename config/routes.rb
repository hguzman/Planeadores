Rails.application.routes.draw do
  get 'planeaciones/index'
  get 'planeaciones/show'
  devise_for :usuarios, controllers: {
    sessions: 'usuarios/sessions'
  }
  
  root 'dashboard#dashboard'

  resources :usuarios
  resources :agentes do
    resources :planeaciones, module: :agentes
    resources :transacciones, module: :agentes
  end

  resources :transacciones
  resources :planeaciones
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
