Rails.application.routes.draw do
  get 'bundle_lines/create'
  devise_for :users
  root to: 'pages#home'
  get 'pages/design', to: 'pages#design'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bundles, only: [:new, :create, :show] do
    resources :bundle_lines, only: :create
    member do
      get 'location'
      get 'services'
    end
  end
end
