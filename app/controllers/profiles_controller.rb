class ProfilesController < ApplicationController
    def my_games
        @games = Game.where(user: current_user)
        @games = policy_scope(Game)
        # authorize @games
    end
    
    def my_devschools
        @devschools = policy_scope(DevSchool)
    end

    def unlock!
        # @game = UserGame.find_by(user_id: current_user.id, game_id: )
        # authorize @game
        # @game.update(completed: true)
        # redirect_to path
    end

    def complete!
    end
end
