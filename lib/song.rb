require 'pry'

class Song

    attr_accessor :name, :artist, :song_artist

    def initialize(song_name)
        @name = song_name
    end

    def self.new_by_filename(file_name)
        song_instance = Song.new(file_name.split(" - ")[1])
        song_instance.artist = song_instance.song_artist(file_name.split(" - ")[0])
        song_instance.artist.add_song(song_instance)
        song_instance.artist.save
        song_instance
    end

    def song_artist(artist_name)
        Artist.find_or_create_by_name(artist_name)
    end

end