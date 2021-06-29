class QuestionsController < ApplicationController
    # skip_after_action :verify_policy_scoped
    before_action :skip_authorization, only: :save
    skip_before_action :authenticate_user!

    
    def index
        if session[:question_state] && session[:question_state]["done"] 
            redirect_to new_user_registration_path
        else	
        @questions = Question.all
        session[:question_state] = {counter: 0, done: false}
        end
    end

    def save
        session[:question_state] = {counter: params["counter"].to_i, done: true}
    end
end