Rails.application.routes.draw do
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  resources :address, only: [:index, :edit, :create, :update, :destroy]
  resources :orders, only: [:new, :confirm, :complete, :create, :index, :show]
  resources :cart_items, only: [:index, :update, :destroy, :destroy_all, :create]
  resources :customers, only: [:show, :edit, :update, :unsubscribe]
  resources :items, only: [:index, :show]
  resources :homes, only: [:top, :about]




  namespace :admin do
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :homes, only: [:top]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
