require 'faker'
require "open-uri"
puts "borrando productos"
Product.destroy_all
puts "borrando usuarios"
User.destroy_all

users = []
puts "creando usuarios"

user1 = User.create!(email: "michele@gmail.com", password: "123456")
file = URI.open( "https://avatars.githubusercontent.com/u/48396891?v=4")
user1.photo.attach(io: file, filename: "michele.png", content_type: "image/png")
puts "usuario: #{user1.email}"
user2 = User.create!(email: "fran@gmail.com", password: "123456")
file = URI.open( "https://avatars.githubusercontent.com/u/96851608?v=4")
user2.photo.attach(io: file, filename: "fran.png", content_type: "image/png")
puts "usuario: #{user2.email}"
user3 = User.create!(email: "caro@gmail.com", password: "123456")
file = URI.open( "https://avatars.githubusercontent.com/u/103596286?v=4")
user3.photo.attach(io: file, filename: "caro.png", content_type: "image/png")
puts "usuario: #{user3.email}"
user4 = User.create!(email: "gaston@gmail.com", password: "123456")
file = URI.open( "https://avatars.githubusercontent.com/u/111038358?v=4")
user4.photo.attach(io: file, filename: "gaston.png", content_type: "image/png")
puts "usuario: #{user4.email}"
users.append(user1, user2, user3, user4)
puts "usuarios creados"
puts "creando productos"

product1 = Product.new(
  name: "Fernet ",
  price: 1000,
  details: "Inicialmente el fernet era solo una bebida de las denominadas “digestivas”, traída a la Argentina por los inmigrantes italianos, aunque actualmente suele servirse indistintamente como aperitivo antes de una comida, o como digestivo después de la misma, acompañando el café y el café expreso.",
  user: users.sample)
file = URI.open("https://labebidadetusfiestas.com.ar/37266/fernet-branca-1lt.jpg")
product1.photo.attach(io: file, filename: "fernet.png", content_type: "image/png")
product1.save!
puts "producto 1 creado"
product2 = Product.new(
  name: "Lester Gin",
  price: 3000,
  details: "El Gin está hecho de un destilado neutro de grano, infusionado con bayas de enebro y otros ingredientes botánicos como frutas, semillas y especias. Este destiladose produce usando un alambique continuo (destilación continua), con los botánicos -predominantemente bayas de enebro- agregadas para dar sabor al líquido.",
  user: users.sample)
file = URI.open("https://d3ugyf2ht6aenh.cloudfront.net/stores/002/255/116/products/ginlesterlondondry11-0b40bed64914eb3e1a16660148617953-480-0.png")
product2.photo.attach(io: file, filename: "Lestergin.png", content_type: "image/png")
product2.save!
puts "producto 2 creado"
product3 = Product.new(
  name: " vino ",
  price: 2500,
  details: "El vino tinto es un tesoro natural rico en polifenoles, siendo uno de ellos el citado resveratrol, sustancia química rica en antioxidantes que, según la Clínica Mayo, nos ayuda a cuidar nuestros vasos sanguíneos ya que evita la formación de coágulos y la reducción del llamado colesterol malo
  ",
  user: users.sample)
file = URI.open("https://fronterawines.com/wp-content/uploads/2021/05/Malbe--260x1024.png")
product3.photo.attach(io: file, filename: "vino.png", content_type: "image/png")
product3.save!
puts "producto 3 creado"
product4 = Product.new(
  name: "Pisco",
  price: 2700,
  details: "Pisco es la denominación de un aguardiente de uvas, producido en Chile y Perú, elaborado fundamentalmente mediante la destilación del producto de la vid, como el brandy y el coñac, pero sin la prolongada crianza en barricas de madera.
  ",
  user: users.sample )
file = URI.open("https://http2.mlstatic.com/D_NQ_NP_740276-MLA41989018595_052020-O.jpg")
product4.photo.attach(io: file, filename: "pisco.png", content_type: "image/png")
product4.save!
puts "producto 4 creado"
product5 = Product.new(
  name: "Tequila",
  price: 4000,
  details: "El tequila es una bebida alcohólica obtenida del destilado, originaria de Tequila, en el estado de Jalisco, México.
  ",
  user: users.sample )
file = URI.open("https://paquitequila.com/wp-content/uploads/2020/12/Reposado-Bottle.png")
product5.photo.attach(io: file, filename: "tequila.png", content_type: "image/png")
product5.save!
puts "producto 5 creado"
puts "fin del ciclo"
