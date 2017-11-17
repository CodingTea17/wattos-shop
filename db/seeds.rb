Product.destroy_all

50.times do |i|
  Product.create( name: (Faker::StarWars.vehicle),
                  cost: ((Random.rand(1.0..9.9) * 1000000).round(0)),
                  origin: (Faker::StarWars.planet) )
end

p "#{Product.count} products successfully added to the db"
