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
    Post.all.select {|pst| pst.author == self}
  end
  
end