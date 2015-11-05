Rails.application.routes.draw do
    
    root to: 'shows#index'
    #Sign-in without Oauth
    get 'signup', to: 'sessions#signup'
    post 'signup', to: 'sessions#manual'
    post   'login'   => 'sessions#signin'
    get    'login'   => 'sessions#new', as: 'session'

    #Sign-in with Facebook Oauth
    get 'auth/:provider/callback', to: 'sessions#create', as: 'facebook'
    get 'auth/failure', to: redirect('/')
    get 'logout', to: 'sessions#destroy', as: 'logout'

    # get '/shows', to: 'shows#index', as: 'shows'

    

    resources :sessions, only: [:create, :destroy]

    

    resources :users do    
    resources :shows, shallow: true
    member do
      get :follow
      get :unfollow
    end
  end
  end