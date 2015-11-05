# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(

  username: "Mark",
  password: "secret",
  email: "mark@test.com",
  image_url: "http://pix.iemoji.com/images/emoji/apple/8.3/256/water-wave.png",
  age: 29,
  sex: "M",
  )

first = Show.create(title: "SPACE JAM",
  venue: "Palace of fun",
  image_url: "www.google.com",
  description: "awesome",
  attendance: 0,
  genre: "Music",
  price: 2,
  showdate: Wed, 04 Nov 2015,
  saledate: Wed, 04 Nov 2015,
  address: "fun",
  time: 2000-01-01 13:00:00 UTC,
  showtime: Wed, 04 Nov 2015 13:00:00 UTC +00:00)


second = Show.create(title: "Mozart Hologram",
  venue: "Larry's Basement",
  image_url: "www.google.com",
  description: "spooky",
  attendance: 0,
  genre: "Halloween",
  price: 2,
  showdate: Fri, 06 Nov 2015,
  saledate: Fri, 06 Nov 2015,
  address: "fun",
  time: 2000-01-01 13:00:00 UTC,
  showtime: Wed, 04 Nov 2015 13:00:00 UTC +00:00)

third = Show.create(title: "tomorrow",
  venue: "tom",
  image_url: "tom",
  description: "tom",
  attendance: 0,
  genre: "om",
  price: 4,
  showdate: Thu, 05 Nov 2015,
  saledate: Thu, 05 Nov 2015,
  address: "8989 hhhh",
  time: 2000-01-01 09:30:00 UTC,
  showtime: Thu, 05 Nov 2015 09:30:00 UTC +00:00)



