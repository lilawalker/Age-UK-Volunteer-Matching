Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users, :controllers => {registrations: "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get '/tell_us_about', to: 'information#tell_us_about_yourself'
  get '/interests', to: 'information#interests'
  get '/profile_show', to: 'profiles#show'
  get '/confirmation', to: 'information#confirmation'
end
