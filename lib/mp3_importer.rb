require 'pry'

class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        list = Dir["#{path}/*.mp3"]
        list.map do |filepath|
            filepath.partition("mp3s/").last
        end
    end

    def import
        self.files.each do |song|
            Song.new_by_filename(song)
        end
    end

end

# imp = MP3Importer.new("./spec/fixtures/mp3s")
# binding.pry
# nil