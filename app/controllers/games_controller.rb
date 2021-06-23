class GamesController < ApplicationController
    def show
      @game = Game.find(params[:id])
    end

    private

    def game_params
      params.require(:game).permit(:completed,:unlocked)
    end
end
