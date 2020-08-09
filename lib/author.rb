require 'pry'
class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(pst)
    @posts << pst 
    pst.author = self
  end
  
  def posts
    @posts
  end
  
end