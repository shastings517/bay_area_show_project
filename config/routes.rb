Rails.application.routes.draw do
  


    get 'auth/:provider/callback', to: 'sessions#auth'
    get 'auth/failure', to: redirect('/')
    get 'signup', to: 'sessions#signup'
    get 'signout', to: 'sessions#destroy', as: 'signout'

    root to: "sessions#login"

    resources :sessions, only: [:create, :destroy]

    resources :users 
    resources :shows
    

end

