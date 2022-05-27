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

puts "Création des comptes"

@acanthite= User.create!(email: 'acanthite.cohénite@gmail.com', first_name: 'Lola', last_name: 'Schreibersite', address: '77 rue Claude Bernard, 75005 Paris', password: "orthorhombique")
@galène= User.create!(email: 'galène.calum@gmail.com', first_name: 'Galène', last_name: 'Coquillart', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "érubescite")
@anatase= User.create!(email: 'anastase.rochera@gmail.com', first_name: 'Anatase', last_name: 'Gravelle', address: 'Gaudant 17 rue du Dr Magnan, 75013 Paris', password: "rhomboédrique")
@barite= User.create!(email: 'barite.gravati@gmail.com', first_name: 'Barite', last_name: 'Liais', address: '8 rue Buffon, 75005 Paris', password: "AgCuFe12SbAs4S13")
@celsiane= User.create!(email: 'celsiane.diamanti@gmail.com', first_name: 'Celsiane', last_name: 'Ponce', address: '57 rue Cuvier, 75231 Paris', password: "CoNiAs3etNiCoAs3")
@mica= User.create!(email: 'mica@gmail.com', first_name: 'Mickael' , last_name: 'Strassi', address: '5 Pl. Magellan, 44800 Saint-Herblain', password: "skuttérudite-smaltite-chloantite")
@ambre= User.create!(email: 'ambre.lapili@gmail.com', first_name: 'Sophie', last_name: 'Libage', address: '15 Rue de la Juiverie, 44000 Nantes', password: "2PbSCu2SSb2S3")
@jade= User.create!(email: 'jade.gypse@gmail.com', first_name: 'Raymond', last_name: 'Travertin', address: '15 rue Meunier, 44880 Sautron', password: " Cu3AsS4 ")
@toto= User.create!(email: 'toto@gmail.com', first_name: 'Toto', last_name: 'Tata', address: '5 Rue Ordronneau, 44406 Rezé', password: "totototo")

puts "Créations des cailloux"

@pierre = Rock.create!(user: @toto , color: 'bleu', shape: 'rond'  , name: 'Pierre', price: 444, description: "Gardez vos enfants occupés pendant des heures")
@pierre_aventure = Rock.create!(user: @ambre, color: 'rouge', shape: 'pointu'  , name: 'Pierre aventure', price: 20, description: "Compagnon de randonnées resiste aux chocs, durable, atteindra les sommets avec vous, vous guidera dans les forêts sombres ")
@caillou = Rock.create!(user: @celsiane, color: 'noir', shape: 'rond', name: 'Caillou laurent', price: 10, description: "Compagnon pour vos soirées aura les meilleures blagues ")
@pikachu = Rock.create!(user: @mica, color: 'gris', shape: 'rond', name: 'Pikachu', price: 206, description: "Vous pouvez vous confier sans honte, vous pouvez baisser votre masque, gardera vos secrets pour toujours, ne vous interrompt pas ")
@bertrand = Rock.create!(user: @barite, color: 'gris', shape: 'grand', name: 'Bertrand', price: 334, description: "Garde du corps, musclé, un seul lancer eloigne les haters  ")
@raavi = Rock.create!(user: @barite, color: 'vert', shape: 'rond', name: 'Raavi', price: 422, description: "Vous aligne les chakras, détend votre corps   ")
@arty = Rock.create!(user: @anatase, color: 'noir', shape: 'pointu', name: 'Arty', price: 44, description: " Expérimentale et conceptuelle")
@smarty = Rock.create!(user: @acanthite, color: 'blanc', shape: 'aiguisé', name: 'Smarty', price: 24, description: "Grand débateur à la réplique affutée")
@precieuse = Rock.create!(user: @toto, color: 'vert', shape: 'aiguisé', name: 'Precieuse', price: 444, description: "Raffinée")
@archy = Rock.create!(user: @mica, color: 'vert', shape: 'rond', name: 'Archy', price: 43, description: "Sa créativité est sans limite, elle fera des maisons, des routes des collones ")


puts "Créations des résas"

Request.create!(user: @ambre, rock: @pierre, date: Date.today - 3, end_date: Date.today - 1, status: "Refusée" )
Request.create!(user: @toto, rock: @pikachu, date: Date.today - 6, end_date: Date.today - 4, status: "Acceptée" )




puts "Rattachement des images"

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

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653604168/caillou2_adjvrx.png')
@arty.photo.attach(io: file, filename: 'arty.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653604168/caillou3_nrfg04.png')
@smarty.photo.attach(io: file, filename: 'smarty.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653399860/Beryl-Muscovite-171688_tvv0sm.jpg')
@precieuse.photo.attach(io: file, filename: 'precieuse.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwcmq45ak/image/upload/v1653604168/caillou_azrzcf.png')
@archy.photo.attach(io: file, filename: 'archy.png', content_type: 'image/png')

puts "FINISH"
