Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :suppliers, only: [:show, :index] do
    resources :reviews, only: [:index]
  end
  retources :bundles, except: [:edit, :update]
end
