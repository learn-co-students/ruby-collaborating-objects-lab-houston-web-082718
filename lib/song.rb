class Song

  @@all = []

attr_accessor :name, :artist

def initialize(name)
@name = name
@@all << self
end

def self.new_by_filename(filename)
  artist, song = filename.split(" - ")
  new_song = self.new(song)
  new_song.artist.name = artist
  new_song
end

  def self.all
    @@all
  end



end
