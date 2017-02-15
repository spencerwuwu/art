Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :gallery_images
    resources :orders
    resources :payment_configs

    root to: "products#index"
  end

  get 'pages/index'
  get 'pages/about', as: 'about'
  
  resources :products, only: [:show, :index]

  resources :orders, only: [:create, :show] do
    member do
      get 'pay'
      get 'finish'
    end
  end

  post 'payment/notify', as: 'payment_notify' # Spgateway notify URL
  post 'payment/return', as: 'payment_return' # Spgateway return URL

  root to: redirect('pages/index')
end
