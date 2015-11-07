class Restaurant < ActiveRecord::Base
     attr_accessible :id, :title, :cuisine, :price_range
     has_many :environments
    def self.all_environments
        return %w(Outdoor\ sitting Casual Romantic Kid\ friendly Meet\ for\ a\ drink Group\ dining Rooftop Nice\ view)
    end
    def self.all_price_ranges
        return %w($ $$ $$$)
    end
end

