class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @question = Question.first
    # raise
  end

  def dashboard
    @user_game = UserGame.where(user: current_user)
    @games = @user_game.map {|user_game| user_game.game }.sort_by{ |game| game.order }
    @completed_num = @user_game.where(completed:true).count
    @devschools = DevSchool.order(:score_to_unlock)
    @unlocked_schools = @devschools.select {|school| school.score_to_unlock <= current_user.score }
    @completed_html = completed('html')
    @completed_css = completed('css')
    @completed_js = completed('js')
    @total_html =  total('html')
    @total_css =  total('css')
    @total_js =  total('js')
    
    # raise
    @markers = @devschools.geocoded.map do |devschool|
      {
        lat: devschool.latitude,
        lng: devschool.longitude,
        info_window: render_to_string(partial: "info_window", locals: { devschool: devschool }),
        image_url: helpers.asset_url('bureau.svg')
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
