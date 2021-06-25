class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @question = Question.first
  end

  def dashboard
    @user_game = UserGame.where(user: current_user)
    @games = @user_game.map do |user_game|
      user_game.game
    end
  end
end
