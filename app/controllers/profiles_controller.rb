class ProfilesController < ApplicationController
    def my_games
        # @games = Game.where(user: current_user)
        # @games = policy_scope(Game)
        # authorize @games
    end
    
    def my_devschools
        # @devschools = policy_scope(DevSchool)
    end
end
