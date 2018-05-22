# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([
  {name: "Radiohead", bio: "Details about Radiohead"},
  {name: "Pink Floyd", bio: "Details about Pink Floyd"},
  {name: "Kayne West", bio: "Details about Kayne West"},
  {name: "Sturgill Simpson", bio: "Details about Sturgill Simpson"},
  {name: "Herbie Hancock", bio: "Details about Herbie Hancock"}
])

genres = Genre.create([
  {name: "Rock"},
  {name: "Rap"},
  {name: "Country"},
  {name: "Jazz"}
])

Song.create(name: "Paranoid Android", artist_id: artists[0].id, genre_id: genres[0].id)
Song.create(name: "Wish You Were Here", artist_id: artists[1].id, genre_id: genres[0].id)
Song.create(name: "Gold Digger", artist_id: artists[2].id, genre_id: genres[1].id)
Song.create(name: "Turtles All the Way Down", artist_id: artists[3].id, genre_id: genres[2].id)
Song.create(name: "Watermelon Man", artist_id: artists[4].id, genre_id: genres[3].id)
