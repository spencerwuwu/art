Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/about', as: 'about'
  get 'pages/donate', as: 'donate'

  root :to => redirect('pages/index')
end
