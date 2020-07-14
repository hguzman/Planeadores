Rails.application.routes.draw do
  devise_for :usuarios
  root 'agentes#index'

  resources :usuarios
  resources :agentes do
    resources :planeaciones, module: :agentes
    resources :ventas, module: :agentes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
