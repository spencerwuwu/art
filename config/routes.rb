Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :orders

    root to: "products#index"
  end

  get 'pages/index'
  get 'pages/about', as: 'about'
  get 'pages/donate', as: 'donate'

    get 'orders/:id/checkout', to: 'orders#checkout', as: 'order_checkout'
  post 'products/:id/buy', to: 'products#buy', as: 'product_buy'
  post 'payments/notify', to: 'payments#notify', as: 'payment_notify'

  root to: redirect('pages/index')
end
