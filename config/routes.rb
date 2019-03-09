Rails.application.routes.draw do
  root 'reservas#new'
  resources :reservas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
