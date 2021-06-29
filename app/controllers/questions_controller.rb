class QuestionsController < ApplicationController
    # skip_after_action :verify_policy_scoped
    before_action :skip_authorization, only: :save_to_session
    skip_before_action :authenticate_user!

    
    def index
        @questions = Question.all
    end

    def save
        
        # number = session[:question_state]["counter"].to_i + 1
        session[:params] = params
        session[:question_state] = {counter: params["counter"].to_i}
        session[:test] = "hello"
    end
end
