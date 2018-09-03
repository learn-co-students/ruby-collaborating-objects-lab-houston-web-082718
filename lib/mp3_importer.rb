class MP3Importer

attr_accessor :path


def initialize(file_path)
  @path = file_path
end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    #took this and files from solutions branch, idk how to use directory lol
    files.each{|f| Song.new_by_filename(f)}
  end

end
