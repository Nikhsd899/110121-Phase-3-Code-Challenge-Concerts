class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)
        if date == Concert.first.date 
        puts Concert.first
    end

    def most_frequent_band
        
        if ny_band.concert > la_band.concert && chi_band.concert 
            puts ny_band.id
        elsif la_band.concert > ny_band.concert && chi_band.concert
            puts la_band.id
        elsif chi_band.concert > ny_band.concert && la_band.concert
            puts chi_band.id
    end


end
# B -< C >- U