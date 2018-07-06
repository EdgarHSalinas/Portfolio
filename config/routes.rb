Rails.application.routes.draw do
  resources :portfolio_projects
  # get 'pages/home'

  # get 'pages/about'
  get 'about', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
