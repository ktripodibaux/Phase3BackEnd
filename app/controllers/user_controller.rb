class UserController <ApplicationController

    get "/users" do

        # {we_in: "Hello World"}.to_json
        
        User.all.to_json
    end

    post '/users' do
        # binding.pry 
        p1 =User.create(name: params[:player1Name], userUrl: params[:player1Picture])
        p2 =User.create(name: params[:player2Name], userUrl: params[:player2Picture])
        p3 =User.create(name: params[:player3Name], userUrl: params[:player3Picture])
        p4 =User.create(name: params[:player4Name], userUrl: params[:player4Picture])
        [p1,p2,p3,p4].to_json
    end


    patch '/users/:id' do
        user_to_update = User.find(params[:id])
        user_to_update.update(score: user_to_update.score + 1)
        user_to_update.to_json
    end
end