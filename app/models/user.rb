class User < ActiveRecord::Base
    has_many :games
    has_many :questions, through: :games
    # has_many :results


end