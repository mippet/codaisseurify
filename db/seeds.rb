
Song.delete_all
Photo.delete_all
Artist.delete_all
#songs
song1 = Song.create({title:"Mama Mia"})
song2 = Song.create({title:"Voulez Vous"})
song3 = Song.create({title:"S.O.S"})
song4 = Song.create({title:"Help"})
song5 = Song.create({title:"Let it Be"})
song6 = Song.create({title:"Twist and Shout"})
#photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/mippet/image/upload/v1485086333/codaisseurify/abba.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/mippet/image/upload/v1485086398/codaisseurify/beatles.jpg")

artist1 = Artist.create(name:"ABBA", songs: [song1, song2, song3], photos: [photo1])
artist2 = Artist.create(name:"Beatles", songs: [song4, song5, song6], photos: [photo2])
#artist
