class MatchesController < ApplicationController
  def index
    @matches = Match.where("volunteer_id = #{current_user.id}")
    # @matches = User.joins(:matches).where(matches: { volunteer_id: current_user.id })
  end

  def create
    @volunteer = User.find(params[:match])
    @match = current_user.older_relationships.create(volunteer_id: @volunteer.id)
    redirect_to confirmation_path
  end

  def confirmation
  end

end
