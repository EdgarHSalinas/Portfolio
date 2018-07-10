Rails.application.routes.draw do
  resources :portfolio_projects, except: [:show]
  get 'portfolio_project/:id', to: 'portfolio_projects#show', as: 'portfolio_project_show'
  # get 'pages/home'

  # get 'pages/about'
  get 'about', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
end
