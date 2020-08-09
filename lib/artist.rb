require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name) 
    @name = name
    @songs = []
  end
  
  def add_song(song)
    new_song = Song.new(name, self)
    @songs << new_song
    new_song
  end
  
  def songs
    @songs
  end
  
end