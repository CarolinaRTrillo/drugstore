Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :products
  resources :sales
  get "nosotros", to: "pages#nosotros"
  get "contacto", to: "pages#contacto"
  get "sold", to: "sales#sold_product"
  # Defines the root path route ("/")
  # root "articles#index"
end
