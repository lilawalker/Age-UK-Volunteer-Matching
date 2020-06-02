class HomeController < ApplicationController
  def index
    @volunteer = params[:volunteer]
  end
end
