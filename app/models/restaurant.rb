class Restaurant < ActiveRecord::Base
    attr_accessible :title, :cuisine, :price_range
    #def self.all_ratings
    #    %w(G PG PG-13 NC-17 R)
    #end
end
