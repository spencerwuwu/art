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
    end
    collection do
      post 'nofify'
      get 'finish'
    end
  end

  root to: redirect('pages/index')
end
