Rails.application.routes.draw do
  root to: 'pages#home'
  get "pages/about", to: "pages#about"
  get "pages/macaron", to: "pages#macaron"
  get "pages/contactorders", to: "pages#contactorders"
  get "pages/wheretofindus", to: "pages#wheretofindus"
  get "pages/homedelivery", to: "pages#homedelivery"
  resources :contacts, only: [:new, :create], :path => 'contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
