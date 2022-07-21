Rails.application.routes.draw do
#   devise_for :customers, controllers: {
#   registrations: "public/registrations",
#   sessions: 'public/sessions'
# }
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

#   devise_for :admins, controllers: {
#   sessions: "admin/sessions"
# }
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

 root to: 'public/homes#top'
    # アプリに対して1つ↑
    # 条件分岐
    # Bookers<% if user_signed_in? %>

  namespace :public do
    get "home/about"=>"homes#about", as: "about"
  
    # URLの頭にしたい部分
    resources :items, only: [:index, :show]
    get 'customers/my_page' => 'customers#show', as: "customer"
    get 'customers/information/edit' => 'customers#edit', as: "customers_edit"
    patch 'customers/information' => 'customers#update'
    get 'customers/unsubscribe' => 'customers#unsubscribe'
    patch 'customers/withdraw' => 'customers#withdraw'
    delete 'cart_items/destroy_all' => 'cart_items#destroy_all'
    post 'orders/confirm', to: 'orders#confirm'
    get "orders/complete" => "orders#complete", as: "complete"
    resources :cart_items, only: [:index, :update, :create, :destroy]
    resources :orders, only: [:new, :create, :index, :show]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
  end

  namespace :admin do
    root to: 'homes#top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, only: [:index, :new, :create, :update, :show, :edit]
    resources :orders, only: [:show, :update]
    resource :order_details, only: [:update]
  end
  

  # namespace :admin do
  #   get 'orders/show'
  # end
  # namespace :admin do
  #   get 'customers/index'
  #   get 'customers/show'
  #   get 'customers/edit'
  # end
  # namespace :admin do
  #   get 'genres/index'
  #   get 'genres/edit'
  # end
  # namespace :admin do
  #   get 'items/index'
  #   get 'items/new'
  #   get 'items/show'
  #   get 'items/edit'
  # end
  # namespace :admin do
  #   get 'homes/top'
  # end
  # namespace :public do
  #   get 'customers/show'
  #   get 'customers/edit'
  #   get 'customers/unsubscribe'
  # end
  # namespace :public do
  #   get 'addresses/index'
  #   get 'addresses/edit'
  # end
  # namespace :public do
  #   get 'orders/new'
  #   get 'orders/complete'
  #   get 'orders/index'
  #   get 'orders/show'
  # end
  # namespace :public do
  #   get 'cart_items/index'
  # end
  # namespace :public do
  #   get 'items/index'
  #   get 'items/show'
  # end
  # namespace :public do
  #   get 'homes/top'
  #   get 'homes/about'
  # end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
