# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Rocket.destroy_all

user = User.create!(
  email: 'frazer.gavin@gmail.com',
  password: 'password-2021'
)

rocket = Rocket.new(
  name: 'Falcon 1',
  user_id: user.id,
  description: 'Reusable two-stage rocket ideal for quick weekend getaways to the Moon and Mars. Stylish interior and sleek exterior design. Also comes with home cinema and cupholders.',
  price: 750000,
  capacity: 4,
  range: 400,
  power: 75000,
  address: 'Stockbridge, SO20 8DY, England',
  is_available: true)

file = URI.open('https://res.cloudinary.com/dajifvnn5/image/upload/v1644409429/rocket_image_tpd90z.jpg')
rocket.photo.attach(io: file, filename: 'rocket_image_tpd90z.jpg', content_type: 'image/jpg')

rocket.save

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
