class ResultController <ApplicationController

    get "/results" do

        # {we_in: "Hello World"}.to_json
        
        results = Result.all.sort{|a,b| b.score <=> a.score}
        results.to_json
    end

    post "/results" do
        r1 = Result.create(name: params[:player1Name], userUrl: params[:player1Picture], score: params[:player1Score])
        r2 = Result.create(name: params[:player2Name], userUrl: params[:player2Picture], score: params[:player2Score])
        r3 = Result.create(name: params[:player3Name], userUrl: params[:player3Picture], score: params[:player3Score])
        r4 = Result.create(name: params[:player4Name], userUrl: params[:player4Picture], score: params[:player4Score])
        [r1,r2,r3,r4].to_json
    end


    
end