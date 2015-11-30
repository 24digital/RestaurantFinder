class Review < ActiveRecord::Base
    attr_accessible :user_name, :review, :restaurant
end
