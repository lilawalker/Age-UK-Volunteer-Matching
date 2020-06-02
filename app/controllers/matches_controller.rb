class MatchesController < ApplicationController
    def index

        # take current user_id 
        # for each of my interests
        #     find all users

        # @matches = all users that share interest

        # @match = Match.create.where("'#{current_user.volunteer}' != User.first.volunteer'")

        @matches = User.all.where("volunteer != '#{current_user.volunteer}'")

        @matches.each |match| do
            Match.create(match.user)
        end

        # bookings = DatabaseConnection.query("SELECT * FROM bookings INNER JOIN spaces ON bookings.space_id = spaces.space_id WHERE spaces.user_id = '#{user_id}' AND bookings.status = '#{status}';")

        # select users FROM users INNER JOIN interests ON interests.user_id = {current_user.id}


      
    end
end
