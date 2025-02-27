# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Venue/Band data..."
Venue.destroy_all
Band.destroy_all

puts "Creating Venues..."
la_venue = Venue.create(title: "The Roxy", city: "LA")
chi_venue = Venue.create(title: "Subterranean", city: "Chicago")
nyc_venue = Venue.create(title: "Terminal 5", city: "NYC")

puts "Creating Bands..."
ny_band = Band.create(name: "LCD Soundsystem", hometown: "NYC")
la_band = Band.create(name: "Muna", hometown: "LA")
chi_band = Band.create(name: "Noname", hometown: "Chicago")

puts "Creating Concerts..."
c1 = Concert.create(
    date: "May 4", 
    band_id: chi_band.id, 
    venue_id: la_venue.id
)
c2 = Concert.create(
    date: "Jun 5",
    band_id: la_band.id,
    venue_id: nyc_venue.id
)
c3 = Concert.create(
    date: "July 6",
    band_id: ny_band.id,
    venue_id: chi_venue.id
)

puts "Seeding done!"
