class Restaurant
    attr_accessible :id, :title, :cuisine, :price_range
    has_many :environments
    
    def initialize(word)
        @title = word 
    end
    def self.all_environments
        return %w(Outdoor\ sitting Casual Romantic Kid\ friendly Meet\ for\ a\ drink Group\ dining Rooftop Nice\ view)
    end
    def self.all_cuisines
        return %w(Sushi Southern\ American Steakhouse Pizza American Tex-Mex Seafood Italian Asian)
    end
    def self.all_price_ranges
        return %w($ $$ $$$ All)
    end
end