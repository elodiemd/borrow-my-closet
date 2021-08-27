Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :outfits, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  patch '/bookings/:id/accept', to: "bookings#accept", as: :accept_booking
  patch '/bookings/:id/reject', to: "bookings#reject", as: :reject_booking
  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
