Rails.application.routes.draw do
  devise_for :users
  root to: 'cinemas#index'

  resources :cinemas do
    resources :shows, only: [:index, :show]
  end

  resources :shows do
    resources :seat_reservations, only: [:new, :create, :index]
  end

end
