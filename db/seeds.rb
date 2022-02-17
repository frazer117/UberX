# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Rocket.destroy_all
User.destroy_all

user = User.create!(
  email: 'frazer.gavin@gmail.com',
  password: 'password-2021'
)

rocket = Rocket.new(
  name: 'Falcon 1',
  user: User.last,
  description: 'Reusable two-stage rocket ideal for quick weekend getaways to the Moon and Mars. Stylish interior and sleek exterior design. Also comes with home cinema and cupholders.',
  price: 7500,
  capacity: 4,
  range: 400,
  power: 75000,
  address: 'London',
  is_available: true
)

file = URI.open('https://res.cloudinary.com/dajifvnn5/image/upload/v1644409429/rocket_image_tpd90z.jpg')
rocket.photo.attach(io: file, filename: 'rocket_image_tpd90z.jpg', content_type: 'image/jpg')
rocket.save

rocket = Rocket.new(
  name: 'Massive Thruster',
  user: User.last,
  description: 'Ideal for reaching the outter solar system for that long summer vacation.',
  price: 19500,
  capacity: 6,
  range: 800,
  power: 25000,
  address: 'Paris',
  is_available: true
)

file = URI.open('https://res.cloudinary.com/dajifvnn5/image/upload/v1644417653/rocket_3_kuy1f1.jpg')
rocket.photo.attach(io: file, filename: 'rocket_3_kuy1f1.jpg', content_type: 'image/jpg')
rocket.save

rocket = Rocket.new(
  name: 'Apollo',
  user: User.last,
  description: 'A morden design and spacious roket taking you everywhere you want in galaxy.',
  price: 10000,
  capacity: 8,
  range: 900,
  power: 30000,
  address: 'Seattle',
  is_available: true
)

file = URI.open('https://res.cloudinary.com/dajifvnn5/image/upload/v1644417653/rocket_1_bydhuf.jpg')
rocket.photo.attach(io: file, filename: 'rocket_1_bydhuf.jpg', content_type: 'image/jpg')
rocket.save

rocket = Rocket.new(
  name: 'Dreamliner',
  user: User.last,
  description: 'Just like the name: take you to your dream planet.',
  price: 12000,
  capacity: 8,
  range: 950,
  power: 35000,
  address: 'New York',
  is_available: true
)

file = URI.open('https://res.cloudinary.com/dajifvnn5/image/upload/v1644417653/rocket_6_ies050.jpg')
rocket.photo.attach(io: file, filename: 'rocket_6_ies050', content_type: 'image/jpg')
rocket.save
