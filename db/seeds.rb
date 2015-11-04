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


