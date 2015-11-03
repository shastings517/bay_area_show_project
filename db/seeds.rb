# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.create({title:"50 Cent",venue:"The Starry Plough Pub",image_url:"http://placehold.it/150x150",description:"It will be great",attendance:"34", genre:"rap", price:"20.00",showdate:"12/1/2015", saledate:"11/28/2015",longitude:"37.852984",latitude: "-122.265779"})
Show.create({title:"Pharrell",venue:"Leo's",image_url:"http://placehold.it/150x150",description:"Time to get jiggy with it!",attendance:"23", genre:"funk", price:"30.00",showdate:"11/29/2015", saledate:"11/21/2015",longitude:"37.839650",latitude:"-122.258889"})
Show.create({title:"Bon Jovi",venue:"The Vessel",image_url:"http://placehold.it/150x150",description:"Partying all night long",attendance:"45", genre:"heavy metal", price:"40.00",showdate:"11/28/2015", saledate:"11/20/2015",longitude:"37.788788",latitude:"-122.406912"})
Show.create({title:"Michael Jackson",venue:"The Mighty",image_url:"http://placehold.it/150x150",description:"Just beat it!",attendance: "56", genre:"hip hop", price:"60.00",showdate:"11/27/2015", saledate:"11/19/2015",longitude:"37.768979",latitude:"-122.405882"})
Show.create({title:"Dave Matthews",venue:"The Grand Nightclub",image_url:"http://placehold.it/150x150",description:"This event will be awesome",attendance: 30, genre:"classical", price:"FREE",showdate:"11/25/2015", saledate:"17",longitude:"37.780376",latitude:"-122.397986"})
