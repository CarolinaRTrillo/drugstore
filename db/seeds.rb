require 'faker'

100.times do
  users = User.new(
    name: Faker::Name.name
  )
end


100.times do
  products = Product.new(
    name:    Faker::Beer.name,
    price: Faker::Commerce.price,
    details:  Faker::Markdown.emphasis
  )
  products.save!
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# movies = .create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# character.create(name: "Luke", movie: movies.first)
