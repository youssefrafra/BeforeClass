class QuestionsController < ApplicationController
    skip_after_action :verify_policy_scoped
    
    def index
        @questions = Question.all
    end
end
