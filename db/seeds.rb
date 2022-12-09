require 'faker'
puts "borrando productos"
Product.destroy_all
puts "borrando usuarios"
User.destroy_all

users = []
puts "creando usuarios"
user1 = User.create!(email: "michele@gmail.com", password: "123456")
puts "usuario: #{user1.email}"
user2 = User.create!(email: "fran@gmail.com", password: "123456")
puts "usuario: #{user2.email}"
user3 = User.create!(email: "caro@gmail.com", password: "123456")
puts "usuario: #{user3.email}"
user4 = User.create!(email: "gaston@gmail.com", password: "123456")
puts "usuario: #{user4.email}"
users.append(user1, user2, user3, user4)
puts "usuarios creados"
puts "creando productos"
100.times do
  product = Product.new(
    name: Faker::Beer.name,
    price: Faker::Commerce.price,
    details: Faker::Markdown.emphasis,
    user: users.sample
  )
  product.save!
  puts "producto: #{product.name} usuario: #{product.user.email}"
end
puts "fin del ciclo"
