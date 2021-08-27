# require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Booking.destroy_all
Outfit.destroy_all
User.destroy_all

puts "creating user"

user1 = User.new(email: "claire@lewagon.com", password: 'happybirthday', user_name: "claire")
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057592/seed/11_1_gn6utz.jpg')
user1.photo.attach(io: file, filename: 'u1.jpg', content_type: 'image/jpg')
user1.save

user2 = User.new(email: "george@lewagon.com", password: '123456', user_name: "george")
user2.photo.attach(io: file, filename: 'u2.jpg', content_type: 'image/jpg')
user2.save

user3 = User.new(email: "mel@lewagon.com", password: '123456', user_name: "mel")
user3.photo.attach(io: file, filename: 'u3.jpg', content_type: 'image/jpg')
user3.save

outfit11 = Outfit.new(name: "Black Chanel Combi", address: "Bosboom Toussaintstraat 45-H, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user3)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057592/seed/11_1_gn6utz.jpg')
outfit11.photos.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
outfit11.save

outfit12 = Outfit.new(name: "White Skirt YSL", address: "Bos en Lommerplantsoen 10, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 50.5, user: user2)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057592/seed/12_1_mfgpb5.jpg')
outfit12.photos.attach(io: file, filename: '4.jpg', content_type: 'image/jpg')
outfit12.save

outfit13 = Outfit.new(name: "Calvin Klein Sweater", address: "Kinkerstraat 339, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 30.5, user: user3)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057593/seed/13_1_lsitj2.jpg')
outfit13.photos.attach(io: file, filename: '7.jpg', content_type: 'image/jpg')
outfit13.save

outfit22 = Outfit.new(name: "Blue Diesel suits", address: "Jan Evertsenstraat 25,Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 30.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057592/seed/22_tib9b0.jpg')
outfit22.photos.attach(io: file, filename: '13.jpg', content_type: 'image/jpg')
outfit22.save

outfit14 = Outfit.new(name: "White Dress Zadig", address: "Bos en Lommerplantsoen 10, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057592/seed/14_1_djphmn.jpg')
outfit14.photos.attach(io: file, filename: '16.jpg', content_type: 'image/jpg')
outfit14.save

outfit15 = Outfit.new(name: "Blue Dior Skirt", address: "Baarsjesweg 308H, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057592/seed/15_1_akp4jr.jpg')
outfit15.photos.attach(io: file, filename: '14.jpg', content_type: 'image/jpg')
outfit15.save

outfit16 = Outfit.new(name: "Dior Outfit", address: "Albert Neuhuysstraat 32, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057591/seed/16_1_tevwen.jpg')
outfit16.photos.attach(io: file, filename: '18.jpg', content_type: 'image/jpg')
outfit16.save

outfit17 = Outfit.new(name: "Cashmere Bordeaux swearter", address: "Bilderdijkstraat 115, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057591/seed/17_1_wgfrmc.jpg')
outfit17.photos.attach(io: file, filename: '10.jpg', content_type: 'image/jpg')
outfit17.save

outfit18 = Outfit.new(name: "Hugo Boss Jacket", address: "Overtoom 557, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user2)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057591/seed/18_1_ala2p6.jpg')
outfit18.photos.attach(io: file, filename: '9.jpg', content_type: 'image/jpg')
outfit18.save

outfit19 = Outfit.new(name: "Essitials Suits", address: "Stadionplein 103, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057591/seed/19_va1ceu.jpg')
outfit19.photos.attach(io: file, filename: '17.jpg', content_type: 'image/jpg')
outfit19.save

outfit20 = Outfit.new(name: "Sandro Beige Jacket", address: "Utrechtsedwarsstraat, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user2)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1630057591/seed/20_vjekeb.jpg')
outfit20.photos.attach(io: file, filename: '15.jpg', content_type: 'image/jpg')
outfit20.save

outfit1 = Outfit.new(name: "Fancy Hugo Boss Suit", address: "IJsbaanpad 9 Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user3)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/1_ffw3q0.jpg')
outfit1.photos.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
outfit1.save

outfit2 = Outfit.new(name: "Beautiful Maje Combi", address: "Kleine-Gartmanplantsoen 5, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 50.5, user: user2)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/4_hjmudc.jpg')
outfit2.photos.attach(io: file, filename: '4.jpg', content_type: 'image/jpg')
outfit2.save

outfit3 = Outfit.new(name: "Fancy Sandro Suits", address: "Nieuwezijds Voorburgwal 150, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 30.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/7_qywyfv.jpg')
outfit3.photos.attach(io: file, filename: '7.jpg', content_type: 'image/jpg')
outfit3.save

outfit3 = Outfit.new(name: "Wonderful Grey suits", address: "Valschermkade 19, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 30.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/13_jgnqtn.jpg')
outfit3.photos.attach(io: file, filename: '13.jpg', content_type: 'image/jpg')
outfit3.save

outfit4 = Outfit.new(name: "Perfect Black Smoking", address: "Stadionplein 115,Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/16_mk9vkb.jpg')
outfit4.photos.attach(io: file, filename: '16.jpg', content_type: 'image/jpg')
outfit4.save
outfit9 = Outfit.new(name: "Couple black & red outfit", address: "Haarlemmerdijk 159 - 163, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/17_dau5ua.jpg')
outfit9.photos.attach(io: file, filename: '17.jpg', content_type: 'image/jpg')
outfit9.save

outfit5 = Outfit.new(name: "Trio Fancy outfit", address: "Nieuwe Spiegelstraat 37H, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/14_c0m6ej.jpg')
outfit5.photos.attach(io: file, filename: '14.jpg', content_type: 'image/jpg')
outfit5.save

outfit6 = Outfit.new(name: "Original Fancy outfit", address: "Haarlemmerstraat 29, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/18_w35iv4.jpg')
outfit6.photos.attach(io: file, filename: '18.jpg', content_type: 'image/jpg')
outfit6.save

outfit7 = Outfit.new(name: "Grey Sandro Suit", address: "Bilderdijkstraat 115, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/10_fowv0n.jpg')
outfit7.photos.attach(io: file, filename: '10.jpg', content_type: 'image/jpg')
outfit7.save

outfit8 = Outfit.new(name: "Beautiful Zadig dress", address: "Bosboom Toussaintstraat 45-H, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884449/seed/9_xg0yyp.jpg')
outfit8.photos.attach(io: file, filename: '9.jpg', content_type: 'image/jpg')
outfit8.save


outfit10 = Outfit.new(name: "Gentlemen Suit", address: "Kattenburgerstraat 292, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", price_per_day: 40.5, user: user1)
file = URI.open('https://res.cloudinary.com/dcejjfcie/image/upload/v1629884448/seed/15_wkvhvq.jpg')
outfit8.photos.attach(io: file, filename: '15.jpg', content_type: 'image/jpg')
outfit10.save



puts "done"
