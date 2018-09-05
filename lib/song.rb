class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name

  end

  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist= artist
    song.save
    song
  end
  def self.all
    @@all
  end

  def self.find_by_artist(artist)
    self.all.select do |song|
      song.artist == artist
    end
  end


    def save
      @@all << self
    end
end
