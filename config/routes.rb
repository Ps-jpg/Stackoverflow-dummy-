Rails.application.routes.draw do
  devise_for :users
  resources :inboxes
  get 'static_pages/landing_page'
  get 'static_pages/privacy'
  get 'static_pages/terms'
  get 'static_pages/about'
  get 'static_pages/pricing'
  get 'static_pages/pricing'
  root 'static_pages#landing_page'
  get 'pricing',to:"static_pages#pricing" 
  get 'terms',to: "static_pages#terms" 
  get 'about',to: "static_pages#about" 
  get 'privacy',to: "static_pages#privacy" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
