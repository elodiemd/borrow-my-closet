# require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Outfit.destroy_all
User.destroy_all

puts "creating user"
user1 = User.create!(email: "claire@lewagon.com", password: 'happybirthday', user_name: "claire")

outfit1 = Outfit.new(name: "Fancy Hugo Boss Suit", location: "IJsbaanpad 9 1076 CV Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/1_ffw3q0.jpg')
outfit1.photos.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
outfit1.save

outfit2 = Outfit.new(name: "Beautiful Maje Combi", location: "Kleine-Gartmanplantsoen 5, 1017 RP Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 50.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/4_hjmudc.jpg')
outfit2.photos.attach(io: file, filename: '4.jpg', content_type: 'image/jpg')
outfit2.save

outfit3 = Outfit.new(name: "Fancy Sandro Suits", location: "Nieuwezijds Voorburgwal 150, 1012 SJ Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 30.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/7_qywyfv.jpg')
outfit3.photos.attach(io: file, filename: '7.jpg', content_type: 'image/jpg')
outfit3.save

outfit3 = Outfit.new(name: "Wonderful Grey suits", location: "Valschermkade 19, 1059 CD Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 30.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/13_jgnqtn.jpg')
outfit3.photos.attach(io: file, filename: '13.jpg', content_type: 'image/jpg')
outfit3.save

outfit4 = Outfit.new(name: "Perfect Black Smoking", location: "Stadionplein 115, 1076 CK Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/16_mk9vkb.jpg')
outfit4.photos.attach(io: file, filename: '16.jpg', content_type: 'image/jpg')
outfit4.save

outfit5 = Outfit.new(name: "Trio Fancy outfit", location: "Nieuwe Spiegelstraat 37H, 1017 DC Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/14_c0m6ej.jpg')
outfit5.photos.attach(io: file, filename: '14.jpg', content_type: 'image/jpg')
outfit5.save

outfit6 = Outfit.new(name: "Original Fancy outfit", location: "Haarlemmerstraat 29, 1013 EJ Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/18_w35iv4.jpg')
outfit6.photos.attach(io: file, filename: '18.jpg', content_type: 'image/jpg')
outfit6.save

outfit7 = Outfit.new(name: "Grey Sandro Suit", location: "Bilderdijkstraat 115, 1053 KN Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/10_fowv0n.jpg')
outfit7.photos.attach(io: file, filename: '10.jpg', content_type: 'image/jpg')
outfit7.save

outfit8 = Outfit.new(name: "Beautiful Zadig dress", location: "Bosboom Toussaintstraat 45-H, 1054 AN Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/9_xg0yyp.jpg')
outfit8.photos.attach(io: file, filename: '9.jpg', content_type: 'image/jpg')
outfit8.save

outfit9 = Outfit.new(name: "Couple black & red outfit", location: "Haarlemmerdijk 159 - 163, 1013 KH Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/17_dau5ua.jpg')
outfit9.photos.attach(io: file, filename: '17.jpg', content_type: 'image/jpg')
outfit9.save

outfit10 = Outfit.new(name: "Gentlemen Suit", location: "Kattenburgerstraat 292, 1018 JL Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/15_wkvhvq.jpg')
outfit8.photos.attach(io: file, filename: '15.jpg', content_type: 'image/jpg')
outfit10.save

puts "done"
