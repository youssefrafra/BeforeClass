class QuestionsController < ApplicationController
    # skip_after_action :verify_policy_scoped
    before_action :skip_authorization, only: :save_to_session
    
    def index
        @questions = Question.all
    end

    def save_to_session
        session[:question_state] = {counter: 2}
        session[:test] = "hello"
    end
end
