require "faker"

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    specialty: Faker::Restaurant.type
  )
  restaurant.save
end
