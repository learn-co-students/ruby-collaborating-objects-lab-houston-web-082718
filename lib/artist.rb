class Artist
@@all = []
  attr_accessor :name

def initialize(name)
  @name = name
end

def songs
  Song.all.select{|song|
    song.artist == self
  }
end

def save
  @@all << self
end




end
