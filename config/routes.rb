Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users, :controllers => {registrations: "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/add_info" => "registrations#add_info", :as => "add_information"

  root to: "home#index"

end
