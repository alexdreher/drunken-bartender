DrunkenBartender::Application.routes.draw do
  devise_for :users

    root to: "order_items#new"

    resources :products
    resources :deliveries, except: [:show, :edit, :update]
    resources :users, only: :index
    resources :bookings, except: [:show, :edit, :update]
    resources :order_items, only: [:new, :create]
end
