puts "Destroying all restaurants..."

Restaurant.destroy_all

puts "Populating database with restaurants"


50.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
    chef_name: ['James Oliver', 'Felipe Bronze', 'Alex Atala', 'Gordon Ramsey'].sample
    )

  puts "#{restaurant.name} was created"
end

puts "done"
