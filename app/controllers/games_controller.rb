class GamesController < ApplicationController
  def index
    # @games = Game.where(user: current_user)
    @games = policy_scope(Game)
    # authorize @games
  end
  
  def show
      @game = Game.find(params[:id])
  end


    private

    def game_params
      params.require(:game).permit(:completed,:unlocked)
    end
end
