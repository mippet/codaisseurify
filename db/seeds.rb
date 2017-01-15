# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.delete_all
Artist.delete_all


abba = Artist.create ({name:"ABBA"})
beatles = Artist.create ({name:"Beatles"})

song1 = Song.create ({title:"Mama Mia", artist: abba})
song2 = Song.create ({title:"Voulez Vous", artist: abba})
song3 = Song.create ({title:"S.O.S", artist: abba})

song4 = Song.create ({title:"Help", artist: beatles})
song5 = Song.create ({title:"Let it Be", artist:beatles})
song6 = Song.create ({title:"Twist and Shout", artist:beatles})
