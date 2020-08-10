require 'pry'
class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def add_post(pst)
    pst.author = self
  end
  
  def posts
    Song.all.select {|song| song.artist == self}
  end
  
end