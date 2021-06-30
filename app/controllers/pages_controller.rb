class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @question = Question.first
    # raise
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

    @markers = @devschools.geocoded.map do |devschool|
      {
        lat: devschool.latitude,
        lng: devschool.longitude,
        # info_window: render_to_string(partial: "info_window", locals: { devschool: devschool })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def total(lang)
    @user_game.select{ |user_game| user_game.game.category == "#{lang}"}.size
  end

  def completed(lang)
    @user_game.select{ |user_game| user_game.game.category == "#{lang}" && user_game.completed}.size
  end
end
