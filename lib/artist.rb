require 'pry'
class Artist

 attr_accessor :name, :songs

 @@all =[]

 def initialize(name)
   @name = name
   @songs = []
   @@all << self
 end

 def add_song(song)
   @songs << song
 end

 def print_songs
   self.songs.each do |song|
    puts "#{song.name}\n"
   end
 end

 def self.all
   @@all
 end

 def save
   @@all.push( self)
 end

 def self.find_or_create_by_name(name)
   found_artist = false
   all.each do |artist|
     if(artist.name == name)
       found_artist = true
       return artist
     end
   end
   if(found_artist == false)
     Artist.new(name)
   end
 end
end
