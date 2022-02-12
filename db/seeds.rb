# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "open-uri"

# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')

Booking.destroy_all
Rocket.destroy_all
User.destroy_all

user = User.create!(
  email: 'frazer.gavin@gmail.com',
  password: 'password-2021'
)

Rocket.create!(
  name: 'Falcon 1',
  user: User.last,
  description: 'Reusable two-stage rocket ideal for quick weekend getaways to the Moon and Mars. Stylish interior and sleek exterior design. Also comes with home cinema and cupholders.',
  price: 750000,
  capacity: 4,
  range: 400,
  power: 75000,
  address: 'London',
  is_available: true
)
