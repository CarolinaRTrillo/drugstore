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
file = URI.open("https://labebidadetusfiestas.com.ar/37266/fernet-branca-1lt.jpg")
product1.photo.attach(io: file, filename: "fernet.png", content_type: "image/png")
product1.save!
puts "producto 1 creado"
product2 = Product.new(
  name: "Lester Gin",
  price: 3000,
  details: "El Gin está hecho de un destilado neutro de grano, infusionado con bayas de enebro y otros ingredientes botánicos como frutas, semillas y especias. Este destiladose produce usando un alambique continuo (destilación continua), con los botánicos -predominantemente bayas de enebro- agregadas para dar sabor al líquido.",
  user: users.sample )
file = URI.open("https://d3ugyf2ht6aenh.cloudfront.net/stores/002/255/116/products/ginlesterlondondry11-0b40bed64914eb3e1a16660148617953-480-0.png")
product2.photo.attach(io: file, filename: "Lestergin.png", content_type: "image/png")
product2.save!
puts "producto 2 creado"
product3 = Product.new(
  name: "Vino",
  price: 2500,
  details: "El vino tinto es un tesoro natural rico en polifenoles, siendo uno de ellos el citado resveratrol, sustancia química rica en antioxidantes que, según la Clínica Mayo, nos ayuda a cuidar nuestros vasos sanguíneos ya que evita la formación de coágulos y la reducción del llamado colesterol malo
  ",
  user: users.sample )
file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pago-de-otazu-2019-vino-elle-1647167160.jpg")
product3.photo.attach(io: file, filename: "vino.png", content_type: "image/png")
product3.save!
puts "producto 3 creado"
product4 = Product.new(
  name: "Pisco",
  price: 2700,
  details: "Pisco es la denominación de un aguardiente de uvas, producido en Chile y Perú, elaborado fundamentalmente mediante la destilación del producto de la vid, como el brandy y el coñac, pero sin la prolongada crianza en barricas de madera.
  ",
  user: users.sample
)
file = URI.open("https://http2.mlstatic.com/D_NQ_NP_740276-MLA41989018595_052020-O.jpg")
product4.photo.attach(io: file, filename: "pisco.png", content_type: "image/png")
product4.save!
puts "producto 4 creado"
product5 = Product.new(
  name: "Tequila",
  price: 4000,
  details: "El tequila es una bebida alcohólica obtenida del destilado, originaria de Tequila, en el estado de Jalisco, México.
  ",
  user: users.sample
)
file = URI.open("https://paquitequila.com/wp-content/uploads/2020/12/Reposado-Bottle.png")
product5.photo.attach(io: file, filename: "tequila.png", content_type: "image/png")
product5.save!
puts "producto 5 creado"

product6 = Product.new(
  name: "Ron",
  price: 3000,
  details: "El ron es un licor alcohólico destilado, obtenido del jugo o de la melaza de la caña de azúcar. Usualmente es un sub-producto de la fabricación del azúcar. Incluye a los tipos claros y ligeros, típicos de la República Dominicana, Cuba y Puerto Rico, y los más pesados y de sabor más intenso como los de Jamaica",
  user: users.sample
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/c_scale,h_350,w_300/v1671200608/Captura_de_Pantalla_2022-12-16_a_la_s_11.22.37_ua7i0v.png")
product6.photo.attach(io: file, filename: "ron.png", content_type: "image/png")
product6.save!
puts "producto 6 creado"

product7 = Product.new(
  name: "Vodka",
  price: 2000,
  details: "Conocida como una de las bebidas alcohólicas más fuertes y potentes del mercado, el vodka es una bebida destilada de origen ruso. Con un tenor alcohólico que puede ir de 35 a 50 por ciento, es sin dudas una de las bebidas más duras ya que está compuesta solamente por agua y etanol a diferencia de otras bebidas alcohólicas que cuentan con otros ingredientes y sabores.",
  user: users.sample
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/c_scale,h_350,q_99,w_300/v1671200608/Captura_de_Pantalla_2022-12-16_a_la_s_11.22.20_mek8xk.png")
product7.photo.attach(io: file, filename: "vodka.png", content_type: "image/png")
product7.save!
puts "producto 7 creado"

product8 = Product.new(
  name: "Vino blanco",
  price: 2500,
  details: "El vino es, exclusivamente, la bebida resultante de la fermentación alcohólica, completa o parcial, de uvas frescas, estrujadas o no, o de mosto de uva. Su contenido en alcohol adquirido no puede ser inferior a 8,5% vol.",
  user: users.sample
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/c_scale,h_400,w_350/v1671200417/2642018081746_fincafondoblanco_tmsdhp.jpg")
product8.photo.attach(io: file, filename: "vinoblanco.png", content_type: "image/png")
product8.save!
puts "producto 8 creado"

product9 = Product.new(
  name: "Wishky",
  price: 4500,
  details: "Es un destilado de cereal envejecido en barricas de madera. Los pioneros en destilarlo y formalizar el proceso de elaboración fueron monjes, de ellos pasó a los campesinos que instalaron infinidad de alambiques caseros. Actualmente, el whisky es el más preciado en el mercado de aguardientes.",
  user: users.sample
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/c_fill,h_800,w_700/v1671200417/johnnie-walker-red-laber-900x600_cm5z56.jpg")
product9.photo.attach(io: file, filename: "whisky.png", content_type: "image/png")
product9.save!
puts "producto 9 creado"

puts "fin del ciclo"
