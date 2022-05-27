# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "reset seed"

Request.destroy_all
Rock.destroy_all
User.destroy_all

puts "crées ton compte"

@agathe= User.create!(email: 'acanthite.cohénite@gmail.com', first_name: 'Agathe', last_name: 'Schreibersite', address: '77 rue Claude Bernard, 75005 Paris', password: "orthorhombique")
@julie= User.create!(email: 'galène.calum@gmail.com', first_name: 'Julie', last_name: 'Coquillart', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "érubescite")
@lola= User.create!(email: 'anastase.rochera@gmail.com', first_name: 'Lola', last_name: 'Gravelle', address: 'Gaudant 17 rue du Dr Magnan, 75013 Paris', password: "rhomboédrique")
@marie= User.create!(email: 'barite.gravati@gmail.com', first_name: 'Marie', last_name: 'Liais', address: '8 rue Buffon, 75005 Paris', password: "AgCuFe12SbAs4S13")
@nina= User.create!(email: 'celsiane.diamanti@gmail.com', first_name: 'Nina', last_name: 'Ponce', address: '57 rue Cuvier, 75231 Paris', password: "CoNiAs3etNiCoAs3")
@paul= User.create!(email: 'mica@gmail.com', first_name: 'Paul' , last_name: 'Strassi', address: '5 Pl. Magellan, 44800 Saint-Herblain', password: "skuttérudite-smaltite-chloantite")
@laura= User.create!(email: 'ambre.lapili@gmail.com', first_name: 'laura', last_name: 'Libage', address: '15 Rue de la Juiverie, 44000 Nantes', password: "2PbSCu2SSb2S3")
@jade= User.create!(email: 'jade.gypse@gmail.com', first_name: 'Jade', last_name: 'Travertin', address: '15 rue Meunier, 44880 Sautron', password: " Cu3AsS4 ")
@toto= User.create!(email: 'toto@gmail.com', first_name: 'toto', last_name: 'Tata', address: '5 Rue Ordronneau, 44406 Rezé', password: "totototo")

puts "crées ta pierre"

@caillou = Rock.create!(user: @agathe, color: 'blue', shape: 'rond', name: 'Caillou', price: 444, description: "Gardez vos enfants occupés pendant des heures")

@aventureux = Rock.create!(user: @julie, color: 'rouge', shape: 'pointu', name: 'Aventureux', price: 20, description: "Compagnon de randonnées resiste aux chocs, durable, atteindra les sommets avec vous, vous guidera dans les forêts sombres ")

@jalet = Rock.create!(user: @lola, color: 'noir', shape: 'rond', name: 'Jalet', price: 10, description: "Compagnon pour vos soirées aura les meilleures blagues ")

@peridot = Rock.create!(user: @nina, color: 'gris', shape: 'rond', name: 'Péridot', price: 206, description: "Vous pouvez vous confier sans honte, vous pouvez baisser votre masque, gardera vos secrets pour toujours, ne vous interrompt pas ")

@Roche = Rock.create!(user: @paul, color: 'gris', shape: 'grand', name: 'Roche', price: 334, description: "Garde du corps, musclé, un seul lancer eloigne les haters  ")

@acanthite = Rock.create!(user: @toto, color: 'vert', shape: 'rond', name: 'Acanthite', price: 422, description: "Vous aligne les chakras, détend votre corps   ")

@chrysolithe = Rock.create!(user: @laura, color: 'noir', shape: 'pointu', name: 'Chrysolithe', price: 44, description: " Expérimentale et conceptuelle")

@cornaline= Rock.create!(user: @jade color: 'white', shape: 'aiguisé', name: 'Cornaline', price: 24, description: "Grand débateur à la réplique affutée")

@alabandine = Rock.create!(user: @toto, color: 'vert', shape: 'aiguisé', name: 'Alabandine', price: 444, description: "Raffinée")

@happelourde = Rock.create!(user: @agathe, color: 'vert', shape: 'rond', name: 'Happelourde', price: 43, description: "Sa créativité est sans limite, elle fera des maisons, des routes des collones ")


puts "attached image"

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653384553/Capture_d_%C3%A9cran_2022-05-23_%C3%A0_15.54.50_dbgfqi.png')
@pierre.photo.attach(io: file, filename: 'pierre.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653384553/Capture_d_e%CC%81cran_2022-05-23_a%CC%80_15.55.38_kj2x55.png')
@pierre_aventure.photo.attach(io: file, filename: 'pierre_aventure.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653384553/Capture_d_%C3%A9cran_2022-05-23_%C3%A0_15.55.05_r84qz2.png')
@caillou.photo.attach(io: file, filename: 'caillou.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653384553/Capture_d_%C3%A9cran_2022-05-23_%C3%A0_15.56.00_drjawd.png')
@pikachu.photo.attach(io: file, filename: 'pikachu.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653396845/Untitled_4_z22dfr.jpg')
@bertrand.photo.attach(io: file, filename: 'bertrand.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653399860/Bismuth-Crystal_ronj5g.jpg')
@raavi.photo.attach(io: file, filename: 'raavi.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653399860/pyrite-roche_afjlv4.jpg')
@arty.photo.attach(io: file, filename: 'arty.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653399860/beryl086_lfru8u.jpg')
@smarty.photo.attach(io: file, filename: 'smarty.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653399860/Beryl-Muscovite-171688_tvv0sm.jpg')
@precieuse.photo.attach(io: file, filename: 'precieuse.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653396846/Untitled_kbbpqg.jpg')
@archy.photo.attach(io: file, filename: 'archy.png', content_type: 'image/png')

puts "FINISH"
