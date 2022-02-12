# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')

Booking.destroy_all
Rocket.destroy_all
User.destroy_all

user = User.create!(
  email: 'frazer.gavin@gmail.com',
  password: 'password-2021'
)

# rocket = Rocket.new(
#   name: 'Falcon 1',
#   user_id: user.id,
#   description: 'Reusable two-stage rocket ideal for quick weekend getaways to the Moon and Mars. Stylish interior and sleek exterior design. Also comes with home cinema and cupholders.',
#   price: 750000,
#   capacity: 4,
#   range: 400,
#   power: 75000,
#   address: Stockbridge, SO20 8DY, England
#   is_available: true)

# rocket.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

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

Rocket.create!(
  name: 'Massive Thruster',
  user: User.last,
  description: 'Ideal for reaching the outter solar system for that long summer vacation.',
  price: 1950000,
  capacity: 6,
  range: 800,
  power: 25000,
  address: 'Sydney',

  is_available: true
)

# Rocket.create!(
#   name: 'Falcon 1',
#   user_id: user.id,
#   description: 'Reusable two-stage rocket ideal for quick weekend getaways to the Moon and Mars. Stylish interior and sleek exterior design. Also comes with home cinema and cupholders.',
#   price: 750000,
#   capacity: 4,
#   range: 400,
#   power: 75000,
#   address: Stockbridge, SO20 8DY, England
#   is_available: true
# )
