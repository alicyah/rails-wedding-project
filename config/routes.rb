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


  resources :suppliers, only: [:index, :new, :create] do
    resources :services, only: [:index]
    resources :availabilities, only: [:new, :create]
    resources :images, only: [:new, :create]
  end

end
