Rails.application.routes.draw do
  resources :searches, only: [:index, :create]
  resources :posts
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  post '/searches/history', to: 'searches#send_history'
  get '/searches/history', to: 'searches#send_history' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "posts#index"
end
