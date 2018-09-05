require "pry"

class MP3Importer
  attr_accessor :path

  @@files =[]
  def initialize(file_path)
    @path = file_path
  end

  def files
    @@files = Dir.entries(path).select{|w| w.include?('mp3')}
    # @@files.map {|w| w.splice(".mp3") }
  end

  # binding.pry
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end

  end
end