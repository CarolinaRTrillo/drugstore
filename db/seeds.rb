require 'faker'
require "open-uri"
puts "borrando productos"
Product.destroy_all
puts "borrando usuarios"
User.destroy_all

users = []
puts "creando usuarios"

user1 = User.create!(email: "michele@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
user1.photo.attach(io: file, filename: "michele.png", content_type: "image/png")
puts "usuario: #{user1.email}"
user2 = User.create!(email: "fran@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/96851608?v=4")
user2.photo.attach(io: file, filename: "fran.png", content_type: "image/png")
puts "usuario: #{user2.email}"
user3 = User.create!(email: "caro@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/103596286?v=4")
user3.photo.attach(io: file, filename: "caro.png", content_type: "image/png")
puts "usuario: #{user3.email}"
user4 = User.create!(email: "gaston@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/111038358?v=4")
user4.photo.attach(io: file, filename: "gaston.png", content_type: "image/png")
puts "usuario: #{user4.email}"
users.append(user1, user2, user3, user4)
puts "usuarios creados"
puts "creando productos"

product1 = Product.new(
  name: "Fernet ",
  price: 1000,
  details: "Inicialmente el fernet era solo una bebida de las denominadas “digestivas”, traída a la Argentina por los inmigrantes italianos, aunque actualmente suele servirse indistintamente como aperitivo antes de una comida, o como digestivo después de la misma, acompañando el café y el café expreso.",
  user: users.sample )
file = URI.open("https://images.unsplash.com/photo-1614313511387-1436a4480ebb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
product1.photo.attach(io: file, filename: "fernet.png", content_type: "image/png")
product1.save!

product2 =Product.new(
  name: "Lester Gin",
  price: 3000,
  details: "El Gin está hecho de un destilado neutro de grano, infusionado con bayas de enebro y otros ingredientes botánicos como frutas, semillas y especias. Este destiladose produce usando un alambique continuo (destilación continua), con los botánicos -predominantemente bayas de enebro- agregadas para dar sabor al líquido.",
  user: users.sample )
file = URI.open("https://images.unsplash.com/photo-1610122525533-61e2f1dcee1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
product2.photo.attach(io: file, filename: "Lestergin.png", content_type: "image/png")
product2.save!

product3 = Product.new(
  name: " vino ",
  price: 2500,
  details: "El vino tinto es un tesoro natural rico en polifenoles, siendo uno de ellos el citado resveratrol, sustancia química rica en antioxidantes que, según la Clínica Mayo, nos ayuda a cuidar nuestros vasos sanguíneos ya que evita la formación de coágulos y la reducción del llamado colesterol malo
  ",
  user: users.sample )
file = URI.open("https://images.unsplash.com/photo-1609790026016-54ace8b92d81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=625&q=80")
product3.photo.attach(io: file, filename: "vino.png", content_type: "image/png")
product3.save!

product4 = Product.new(
  name: "Pisco",
  price: 2700,
  details: "Pisco es la denominación de un aguardiente de uvas, producido en Chile y Perú, elaborado fundamentalmente mediante la destilación del producto de la vid, como el brandy y el coñac, pero sin la prolongada crianza en barricas de madera.
  ",
  user: users.sample
)
file = URI.open("https://images.unsplash.com/photo-1639016618261-f8b4ff879510?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
product4.photo.attach(io: file, filename: "pisco.png", content_type: "image/png")
product4.save!

product5 = Product.new(
  name: "Tequila",
  price: 4000,
  details: "El tequila es una bebida alcohólica obtenida del destilado, originaria de Tequila, en el estado de Jalisco, México.
  ",
  user: users.sample
)
file = URI.open("https://images.unsplash.com/photo-1642382597250-f1d80472917b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
product5.photo.attach(io: file, filename: "tequila.png", content_type: "image/png")
product5.save!

puts "fin del ciclo"
