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

puts "create user"

@acanthite= User.create!(email: 'acanthite.cohénite@gmail.com', first_name: 'lola' , last_name: 'schreibersite' , address: '77 rue Claude Bernard, 75005 Paris' , password: "orthorhombique")
@galène= User.create!(email: 'galène.calum@gmail.com', first_name: 'galène' , last_name: 'coquillart' , address: ' 60, bd Risso, 06300 NICE' , password: "érubescite")
@anatase= User.create!(email: 'anastase.rochera@gmail.com', first_name: 'anatase' , last_name: 'gravelle' , address: ' Gaudant 17 rue du Dr Magnan, 75013 Paris' , password: "rhomboédrique")
@barite= User.create!(email: 'barite.gravati@gmail.com', first_name: 'barite' , last_name: 'liais' , address: '8 rue Buffon, 75005 Paris.' , password: "AgCuFe12Sb,As)4S13")
@celsiane= User.create!(email: 'celsiane.diamanti@gmail.com', first_name: 'celsiane' , last_name: 'ponce' , address: '57 rue Cuvier, 75231 Paris Cedex 05' , password: "CoNiAs3etNiCoAs3")
@mica= User.create!(email: 'mica@gmail.com', first_name: 'mica' , last_name: 'strassi' , address: ' 38 rue des 36 Ponts, 31400 Toulouse ' , password: "skuttérudite-smaltite-chloantite")
@ambre= User.create!(email: 'ambre.lapili@gmail.com', first_name: 'ambre' , last_name: 'libage' , address: '94 Avenue de Lattre de Tassigny, 54000 Nancy.'  , password: "2 PbSCu2SSb2S3")
@jade= User.create!(email: 'jade.gypse@gmail.com', first_name: 'jade' , last_name: 'travertin' , address: '34 rue du Paradis, 01100 OYONNAX' , password: " Cu3AsS4 ")
@toto= User.create!(email: 'toto@gmail.com', first_name: 'toto', last_name: 'tata' , address: 'rue des Grès de Beauchamps, 02600 VILLERS-COTTERETS', password: "totototo")

puts "create rock"

@pierre = Rock.create!(user: @toto , color: 'blue', shape: 'round'  , name: 'pierre', price: 444, description: "Gardez vos enfants occupés pendant des heures")

@pierre_aventure = Rock.create!(user: @ambre, color: 'red', shape: 'pointy'  , name: 'pierre aventure', price: 20, description: "Compagnon de randonnées resiste aux chocs, durable, atteindra les sommets avec vous, vous guidera dans les forêts sombres ")

@caillou = Rock.create!(user: @celsiane, color: 'black', shape: 'round'  , name: 'caillou laurent', price: 10, description: "Compagnon pour vos soirées aura les meilleures blagues ")

@pikachu = Rock.create!(user: @mica, color: 'grey', shape: 'transparent'  , name: 'pikachu', price: 206, description: "Vous pouvez vous confier sans honte, vous pouvez baisser votre masque, gardera vos secrets pour toujours, ne vous interrompt pas ")

@bertrand = Rock.create!(user: @barite, color: 'grey', shape: 'big'  , name: 'bertrand', price: 334, description: "Garde du corps, musclé, un seul lancer eloigne les haters  ")

@raavi = Rock.create!(user: @toto, color: 'green', shape: 'round'  , name: 'raavi', price: 422, description: "Vous aligne les chakras, détend votre corps   ")

@arty = Rock.create!(user: @anatase, color: 'black', shape: 'pointy'  , name: 'arty', price: 44, description: " Expérimentale et conceptuelle")

@smarty = Rock.create!(user: @acanthite, color: 'white', shape: 'sharp'  , name: 'smarty', price: 24, description: "Grand débateur à la réplique affutée")

@precieuse = Rock.create!(user: @toto, color: 'grey', shape: 'round'  , name: 'precieuse', price: 444, description: "Soyez la personne la plus élégante")

@archy = Rock.create!(user: @mica, color: 'green', shape: 'round'  , name: 'archy', price: 43, description: "Sa créativité est sans limite, elle fera des maisons, des routes des collones ")

@happy = Rock.create!(user: @ambre, color: 'white', shape: 'pointy'  , name: 'happy', price: 54, description: "Motive avec le sourire")

@confty = Rock.create!(user: @jade, color: 'blue', shape: 'sharp'  , name: 'confty', price: 64, description: "Rassurante est toujours la pour toi ")

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
