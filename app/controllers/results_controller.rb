class ResultController <ApplicationController

    get "/results" do

        # {we_in: "Hello World"}.to_json
        
        Result.all.to_json
    end

    post "/results" do
        Result.create(name: params[:player1Name], userUrl: params[:player1Picture], score: [:player1Score]).to_json
        Result.create(name: params[:player2Name], userUrl: params[:player2Picture], score: [:player2Score]).to_json
        Result.create(name: params[:player3Name], userUrl: params[:player3Picture], score: [:player3Score]).to_json
        Result.create(name: params[:player4Name], userUrl: params[:player4Picture], score: [:player4Score]).to_json
    end


    
end