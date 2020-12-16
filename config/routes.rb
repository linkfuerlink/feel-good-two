Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'empowerments#dashboard', as: :empowerments_dashboard
  get "myobnb", to: 'users#host_index'

  resources :empowerments do
    get "/activity", to: 'empowerments#new_activity', as: :new_activity
    post "/activity", to: 'empowerments#create_activity', as: :create_activity
  end


  # static pages
  get "/blog", to: 'pages#blog'


end
