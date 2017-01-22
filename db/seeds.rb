# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.delete_all
Artist.delete_all

song1 = Song.create({title:"Mama Mia"})
song2 = Song.create({title:"Voulez Vous"})
song3 = Song.create({title:"S.O.S"})

song4 = Song.create({title:"Help"})
song5 = Song.create({title:"Let it Be"})
song6 = Song.create({title:"Twist and Shout"})

artist1 = Artist.create({name:"ABBA"})
artist2 = Artist.create({name:"Beatles"})

artist1.songs << [song1]
artist1.save

artist1.songs << [song2]
artist1.save

artist1.songs << [song3]
artist1.save

artist2.songs << [song4]
artist2.save

artist2.songs << [song5]
artist2.save

artist2.songs << [song6]
artist2.save
