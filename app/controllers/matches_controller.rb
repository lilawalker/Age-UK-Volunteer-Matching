class MatchesController < ApplicationController
  def index
  end

  def create
    @volunteer = User.find(params[:match])
    @match = current_user.older_relationships.create(volunteer_id: @volunteer.id)
    redirect_to confirmation_path
  end

  def confirmation
  end

end
