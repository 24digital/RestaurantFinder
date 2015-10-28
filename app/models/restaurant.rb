class Restaurant < ActiveRecord::Base
    attr_accessible :title, :cuisine, :price_range
    def self.all_environments
        return %w(outdoor_sitting casual romantic kid_friendly meet_for_a_drink group_dining rooftop nice_view)
    end
end
