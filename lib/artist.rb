require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name) 
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song = Song.new(name, self)
    @songs << song
    song
  end
  
  def songs
    @songs
  end
  
end