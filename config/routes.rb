# frozen_string_literal: true

Rails.application.routes.draw do
  resources :authors
  resources :books
  get "report" => "books#report"
  root "books#index" 
end
