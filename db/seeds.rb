# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 
  Product.create(name: Faker::Name.first_name,released_on: (Date.today+Random.rand(1..67)),price: 4000*Random.rand(0..(0.01)) )
end