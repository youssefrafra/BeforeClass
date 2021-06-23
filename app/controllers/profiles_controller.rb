class ProfilesController < ApplicationController
    def my_games
        @games = Game.where(user: current_user)
    end
    
    def my_devschools
        @devschools = DevSchool.where(user: current_user)
    end

    def unlock!
        # @game = UserGame.find_by(user_id: current_user.id, game_id: )
        # @game.update(completed: true)
        # redirect_to path
    end

    def complete!
    end
end
