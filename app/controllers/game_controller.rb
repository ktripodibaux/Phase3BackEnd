class GameController <ApplicationController

    get "/games" do

        # {we_in: "Hello World"}.to_json
        
        Game.all.to_json
    end
end