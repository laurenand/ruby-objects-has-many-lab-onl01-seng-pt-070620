require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name) 
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(song_name)
    new_song = Dish.new(song_name, self)  
    @songs << new_song
    binding.pry
  end
  
  def self.song_count
    
  end
  
end