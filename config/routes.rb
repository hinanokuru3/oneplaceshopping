Rails.application.routes.draw do
  get 'searchs/top'
  get 'shopping_centers/index'
  get 'shopping_centers/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'toppages/index'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  
  resources :shopping_centers, only: [:index, :show]
  resources :shops, only: [:index, :show]
  
  #get 'searchs/about', to: 'searchs#top',　as: search
end
