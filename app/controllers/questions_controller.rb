class QuestionsController < ApplicationController
    # skip_after_action :verify_policy_scoped
    before_action :skip_authorization, only: :save_to_session
    skip_before_action :authenticate_user!

    
    def index
        if session[:question_state]["done"]
            redirect_to dashboard_path
        else	
        @questions = Question.all
        session[:question_state] = {counter: 0, done: false}
        end
    end

    def save
        session[:question_state] = {counter: params["counter"].to_i, done: true}
    end
end
