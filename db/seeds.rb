# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

# generate 5 restaurants
require 'faker'

5.times do
  p Restaurant.create(
    name: Faker::FunnyName.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Restaurant::CATEGORY.sample
  )
end
