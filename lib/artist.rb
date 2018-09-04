class Artist

    attr_accessor :name, :songs

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song_instance)
        @songs << song_instance
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(artist_name)
        instance = true

        @@all.each do |artist_instance|
            if artist_instance.name == artist_name
                instance = artist_instance
            end
        end

        if instance == true
            instance = Artist.new(artist_name)
        end

        instance
    end

    def print_songs
        @songs.each do |song_instance|
            puts song_instance.name
        end
    end

end