class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue, date)
        Concert.create(
            date: date, 
            band_id: self.id, 
            venue_id: venue_id
        )
    end
   
    def all_introductions
        puts ["band.introduction"]

    end
  
    def most_performances
        %w[ny_band.id, la_band.id, ny_band.id].map { band.id }
         
        if ny_band.concert > la_band.concert && chi_band.concert 
            puts ny_band.id
        elsif la_band.concert > ny_band.concert && chi_band.concert
            puts la_band.id
        elsif chi_band.concert > ny_band.concert && la_band.concert
            puts chi_band.id
         
    end  
end

# B -< C >- U