class Concert < ActiveRecord::Base
    belongs_to :band
    belongs_to :venue

    def hometown_show
       array = Concert.first.band = []
       array.map { |venue.city| }     
        if self.venue.city == self.venue.hometown
            puts "true"
        elsif self.venue.city !== self.venue.hometown
            puts "false"
    end
   
    def introduction
        
        puts `"Hello #{self.venue.city}!!!!! We are #{self.band.name} and we're from
      #{self.band.hometown}"`


    end 
end

# B -< C >- U