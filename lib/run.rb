require 'pry'
require_relative './mp3_importer.rb'
require_relative './song.rb'
require_relative './artist'

artist_1 = Artist.find_or_create_by_name("Michael Jackson")
artist_2 = Artist.find_or_create_by_name("Michael Jackson")


song_one = Song.new("Rock With You")
song_two = Song.new("Smooth Criminal")
# artist_1.add_song(song_one)


dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")




binding.pry