class Question <ActiveRecord::Base
    
    belongs_to :game
    has_many :users, through: :games

  
end