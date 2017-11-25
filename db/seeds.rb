Product.destroy_all
Review.destroy_all
User.destroy_all

User.create!(email: "watto@test.com", username: "Watto", password: "password", admin: true)

10.times do
  User.create!(email: Faker::Internet.email,
                        username: Faker::Name.unique.name,
                        password: "password")
end
p "Created #{User.count} users"

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
                  product_id: Faker::Number.between(Product.first.id, Product.last.id),
                  user_id: Faker::Number.between(User.first.id, User.last.id))
  break if Review.count === 250
end

p "#{Review.count} reviews successfully added to the db"
