class MatchesController < ApplicationController
  def index
    @matches = Match.where("volunteer_id = #{current_user.id}")
  end

  def create
    p params
    @volunteer = User.find(params[:match])
    @match = current_user.older_relationships.create(volunteer_id: @volunteer.id)
    redirect_to confirmation_path
    session[:volunteer_id] = @volunteer.id
  end

  def confirmation
    @profile = session[:volunteer_id]
    @current_profile = User.find(@profile)
    
    puts '------'
    p params
    p @profile
    puts '------'
  end

end
