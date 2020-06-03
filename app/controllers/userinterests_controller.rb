class UserinterestsController < ApplicationController
  def add_userinterests
    @userinterest = Userinterest.new
  end

  def update
    puts 'hi'
    @user = current_user
    puts(params[:value])
    puts(@user[:id])
    h = { "sports" => 20000,"reading" => 20001, "baking" => 20002, "gardening" => 20003, "dancing" => 20004, "music" => 20005, "languages" => 20006, "fishing" => 20007, "walking" => 20008 }
    Userinterest.new(user_id: @user[:id], interest_id: h[params[:value]]).save(validate: false)

  end
end
