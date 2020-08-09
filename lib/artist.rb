require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name) 
    @name = name
    @songs = []
  end
  
  def add_song(song)
    new_song = Song.new()
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
end