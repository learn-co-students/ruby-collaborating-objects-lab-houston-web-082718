require 'pry'

class MP3Importer

    attr_reader :path
    attr_accessor :files

    def initialize(file_path)
        @path = file_path
        @files = []
        file_directory = Dir.new(@path)
        file_directory.each do |file_name|
            if file_name.end_with?(".mp3")
                @files << file_name
            end
        end
    end

    def import
        @files.each do |file_name|
            Song.new_by_filename(file_name)
        end
    end

end