require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    desc = file.split(" - ")
    artist = Artist.find_or_create_by_name(desc[0])
    song = self.new(desc[1])
    song.artist = artist
    artist.songs << song
    song
    #binding.pry
  end


end
