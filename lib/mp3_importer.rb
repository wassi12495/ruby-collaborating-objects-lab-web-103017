require 'pry'

class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path


  end

  def files

    @files = Dir.entries("#{@path}").reject {|file| file.start_with?(".")}

  end

  def import
    #sbinding.pry
    files.each do |song|
    #  binding.pry
      Song.new_by_filename(song)
      #binding.pry
    end
  end

end

#Pry.start
