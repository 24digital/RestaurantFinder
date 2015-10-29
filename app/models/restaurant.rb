class Restaurant < ActiveRecord::Base
    attr_accessible :title, :cuisine, :price_range
    def self.all_environments
        return %w(Outdoor\ sitting Casual Romantic Kid\ friendly Meet\ for\ a\ drink Group\ dining Rooftop Nice\ view)
    end
end
