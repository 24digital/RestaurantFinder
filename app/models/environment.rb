class Environment < ActiveRecord::Base
    attr_accessible :restaurant_id, :env_type
     belongs_to :restaurants
end
