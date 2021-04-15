Rails.application.routes.draw do
  root "stores#index"
  get "stores/detail/:id", to: "stores#detail", as: "detail"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
end
