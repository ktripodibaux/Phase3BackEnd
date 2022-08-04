class UserController <ApplicationController

    get "/users" do

        # {we_in: "Hello World"}.to_json
        
        User.all.to_json
    end

    post '/users' do
        # binding.pry 
        p1 =User.create(name: params[:player1Name], userUrl: params[:player1Picture], score: 0)
        p2 =User.create(name: params[:player2Name], userUrl: params[:player2Picture], score: 0)
        p3 =User.create(name: params[:player3Name], userUrl: params[:player3Picture], score: 0)
        p4 =User.create(name: params[:player4Name], userUrl: params[:player4Picture], score: 0)
        [p1,p2,p3,p4].to_json
    end


    patch '/users/:id' do
        user_to_update = User.find(params[:id])
        user_to_update.update(score: user_to_update.score + 1)
        user_to_update.to_json
    end

    delete '/users' do
        User.destroy_all.to_json
        #The below method is for when we were removing individual users:
        #user_to_be_nuked = User.find(params[:id])
        #user_to_be_nuked.destroy
        #user_to_be_nuked.to_json
    end
end