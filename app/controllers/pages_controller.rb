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
    
    @completed_num = @user_game.where(completed:true).count

    @devschools = DevSchool.all
    @completed_html = completed('html')
    @completed_css = completed('css')
    @completed_js = completed('js')
    @total_html =  total('html')
    @total_css =  total('css')
    @total_js =  total('js')
  end

  def total(lang)
    @user_game.select{ |user_game| user_game.game.category == "#{lang}"}.size
  end

  def completed(lang)
    @user_game.select{ |user_game| user_game.game.category == "#{lang}" && user_game.completed}.size
  end
end
