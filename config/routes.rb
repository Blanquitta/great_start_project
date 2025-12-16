Rails.application.routes.draw do
  resources :sessions, only: [ :index, :show ] do
  resources :password, only: [ :index, :show ]
  end
  resources :sessions, only: [ :new, :create, :destroy ]
  resources :password, param: :token, only: [ :new, :create, :edit, :update ]
  resources :authors do
    resources :books do
    resources :reviews
    end
  end
    resources :forms, controller: "form", only: [ :index ]
    get "/dahsboard", to: "pages#index"
    get "/dashboard", to: "dashboard#index"

    root "books#index"

    get "/authors/new", to: "authors#new"
    get "/authors/id", to: "authors#show"

    get "/books", to: "books#index"
    get "/books/new", to: "books#new"
    get "/books/:id", to: "books#show"

    get "/reviews", to: "reviews#index"
    get "/reviews/new", to: "reviews#new"
    get "/reviews/id", to: "reviews#show"
    post "/books", to: "books#create"
    #  post '/login', to: 'dashboard#login'

    get "/forms", to: "form#index"
    get "/forms/new", to: "form#new"
    get "/forms/id", to: "form#show"

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
    # Can be used by load balancers and uptime monitors to verify that the app is live.
    get "up" => "rails/health#show", as: :rails_health_check

    # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
    # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
    # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

    # Defines the root path route ("/")

    get "/dahsboard", to: "pages#index"

    get "/sessions", to: "session#index"

    # root "posts#index"
    resources :books
   end
