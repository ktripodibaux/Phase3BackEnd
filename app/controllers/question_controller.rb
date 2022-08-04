class QuestionController <ApplicationController

    get "/questions" do
        num = rand(1...40)
        random_question = Question.all.find{|each| num == each.id}
        
        random_question.to_json
    end

    #This post is just for seeding the database with questions
    post '/questions' do
        params[:results].map do |each|
            hope = each[:incorrect_answers]
            new_hope = hope.join(", ")
            Question.create(question: each[:question], correct_answer: each[:correct_answer], incorrect_answer: new_hope, difficulty: each[:difficulty], category: each[:category]).to_json
        end
        


    
        #return "hope this works #{params[:incorrect_answer].count}"
        #return params[:incorrect_answer]


        #Question.create(question: params[:question], correct_answer: params[:correct_answer], difficulty: params[:difficulty],incorrect_answer: new_hope,category: params[:category]).to_json
    end
end