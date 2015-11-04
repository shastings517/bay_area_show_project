Rails.application.routes.draw do
    
    root to: 'shows#index'
    #Sign-in without Oauth
    get 'signup', to: 'sessions#signup'
    post 'signup', to: 'sessions#manual'
    post   'login'   => 'sessions#signin'
    get    'login'   => 'sessions#new', as: 'session'

    #Sign-in with Facebook Oauth
    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'logout', to: 'sessions#destroy', as: 'logout'

    

    resources :sessions, only: [:create, :destroy]

    resources :users  
    resources :shows
  

end

