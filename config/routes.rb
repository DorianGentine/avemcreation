Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get 'less', to: 'pages#less', as: 'less'

  resources :form_lesses, only: [:create, :update, :new, :index]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :articles, only: [ :index ]
    end
  end
end
