class QuestionsController < ApplicationController
    
    def show
        @question = Question.find(params[:id])
        authorize @question
    end


    # def question_params
    #     params.require(:questions).permit(:content, :category, :order)
    # end
end
