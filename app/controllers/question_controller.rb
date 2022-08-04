class QuestionController <ApplicationController

        easy_array = []
        easy_array[0] = rand (1...41)
        for i in 1...40
            x = rand(1...41)
            type = easy_array.include?(x) ? "yes" : "no"
            if type == "no"
            easy_array[i] = x
            else
                redo
            end
        end
        
        medium_array = []
        medium_array[0] = rand (41...81)
        for i in 1...40
            x = rand(41...81)
            type = medium_array.include?(x) ? "yes" : "no"
            if type == "no"
            medium_array[i] = x
            else
                redo
            end
        end

        hard_array = []
        hard_array[0] = rand (81...121)
        for i in 1...40
            x = rand(81...121)
            type = hard_array.include?(x) ? "yes" : "no"
            if type == "no"
            hard_array[i] = x
            else
                redo
            end
        end


  
    
    
    
    get "/questions/round/1" do
        # easy_num = rand(1...40).to_a
        # med_num = rand(41...80)
        # hard_num = rand(81...120)

        # r = SimpleRandom.new
        # r.set_seed

        easy_array.to_json

        #random_question = Question.all.find{|each| easy_num == each.id}
        
        #random_question.to_json
    end

    get "/questions/round/2" do

        medium_array.to_json

    end

    get "/questions/round/3" do

        hard_array.to_json
        
    end
    
    get "/questions/:id" do
        Question.find(params[:id]).to_json
    
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