Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :ideas
  resource :user, only: [:edit, :update]

  get "pages/info"
  root "ideas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
