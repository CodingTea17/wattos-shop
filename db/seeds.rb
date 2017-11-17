Product.destroy_all
Review.destroy_all

50.times do |i|
  Product.create( name: (Faker::StarWars.vehicle),
                  cost: ((Random.rand(1.0..9.9) * 1000000).round(0)),
                  origin: (Faker::StarWars.planet) )
end

p "#{Product.count} products successfully added to the db"


loop do
  Review.create(  author: (Faker::StarWars.character),
                  content: ((Random.rand(1..2) % 2 === 0) ? Faker::StarWars.wookie_sentence + " " + Faker::StarWars.wookie_sentence : Faker::StarWars.quote + " " + Faker::StarWars.quote),
                  rating: (Random.rand(1..5)),
                  product_id: (Random.rand(1..50)) )
  break if Review.count === 250
end

p "#{Review.count} reviews successfully added to the db"
