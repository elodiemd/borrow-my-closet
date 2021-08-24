Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :outfits, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
