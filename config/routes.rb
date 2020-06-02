Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users, :controllers => {registrations: "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get "/add_info" => "registrations#add_info", :as => "add_information"
    post "/add_info" => "registrations#update", :as => "update_information"
    put "/add_info" => "registrations#update", :as => "new_update"
  end

  get "/add_interests" => "interests#add_interests", :as => "add_interests"

  root to: "home#index"

end
