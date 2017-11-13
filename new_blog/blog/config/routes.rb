Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  get 'welcome/index'

  root 'welcome#index'

  resources :articles do
      resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end