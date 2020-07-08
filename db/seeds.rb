# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

x = 25
5.times do
  item = Listing.new(description:"Another house", year_built:"1980", square_feet:2000,
    bedrooms:3, bathrooms:3.5,availability:true, price:350_000, address:"#{x} Main st., chicago, maine",
     latitude:1234453, longitude:123456)
  item.save
  x += 56
end
