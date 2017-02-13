Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :gallery_images
    resources :orders

    root to: "products#index"
  end

  get 'pages/index'
  get 'pages/about', as: 'about'
  
  resources :products, only: [:show, :index]

  resources :orders, only: [:create, :show] do
    member do
      get 'pay'
    end
  end

  root to: redirect('pages/index')
end