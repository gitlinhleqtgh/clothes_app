Rails.application.routes.draw do
  root "stores#index"
  get "stores/detail/:id", to: "stores#detail", as: "detail"
end
