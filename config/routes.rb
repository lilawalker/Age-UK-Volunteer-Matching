Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  root to: "home#index"

  get '/tell_us_about', to: 'information#tell_us_about_yourself'
  get '/interests', to: 'information#interests'
end
