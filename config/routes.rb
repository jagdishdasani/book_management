Rails.application.routes.draw do
  resources :authors
  resources :formats
  resources :books
  get "report" => "books#report"
  root "books#index" 
end
