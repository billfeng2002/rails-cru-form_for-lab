# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.destroy_all
Artist.destroy_all
Song.destroy_all

10.times do |t|
    Genre.create(name:"pop#{t}")
end

10.times do |t|
    Artist.create(name: "artist#{t}")
end

20.times do |t|
    Song.create(name: "song#{t}", artist_id: Artist.ids.sample, genre_id: Genre.ids.sample)
end