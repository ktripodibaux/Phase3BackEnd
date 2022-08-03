class QuestionController <ApplicationController

    get "/questions/:id" do

        question = Question.find(params[:id])
        
        question.to_json
    end
end