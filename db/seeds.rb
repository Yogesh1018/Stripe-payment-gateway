# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create(name: 'Yogi', email: "yogesh.raghuvanshi@gemsessence.com")

10.times do
  author = Faker::Name.name
  title = Faker::Movies::HarryPotter.book 
  amount = Faker::Number.number(3)
  Book.create(author: author, title: title, price: amount)
end