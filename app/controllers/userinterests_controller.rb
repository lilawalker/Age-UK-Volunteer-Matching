class UserinterestsController < ApplicationController
  def add_userinterests
    @userinterest = Userinterest.new
  end

  def update
    puts 'hi'
    @user = current_user
    redirect_to profile_show_path
  end
end
