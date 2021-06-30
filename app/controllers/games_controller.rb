class GamesController < ApplicationController
  def index
    @user_game = UserGame.where(user: current_user)
    @games = @user_game.map do |user_game|
      user_game.game
    end
    # @games = policy_scope(Game)
    # authorize @games
  end
  
  def show
      @user_game = UserGame.where(user: current_user , game: Game.find(params[:id])).first
      # authorize @user_game
  end

  def unlock(game)
    @order = game.order + 1
    @game = Game.find_by(order: @order)
    @user_game = UserGame.find_by(user: current_user,game: @game)
    # authorize @user_game
    @user_game.update(unlocked: true) if @user_game
    # raise
  end

  def complete
    @game = Game.find(params[:id])
    @user_game = UserGame.find_by(user: current_user, game: @game)
    @user_game.update(completed: true)
    unlock(@game)
    # raise
  end

  def create_session
    raise
    if user_signed_in?
      # raise
      @games = Game.all
      @games.each do |game|
        UserGame.create!(user: current_user, game: game, unlocked: game.order == 1)
      end
    end
  end

    private

    def game_params
      params.require(:game).permit(:completed,:unlocked)
    end
end
