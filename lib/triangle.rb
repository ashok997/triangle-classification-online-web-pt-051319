require 'pry'

class Triangle
  # write code here
  attr_accessor :a, :b, :c
  
  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
 
    if side_a==side_b && side_b==side_c
      self.kind :equilateral
    elsif side_a==side_b || side_b==side_c ||side_a==side_c
      self.kind :isosceles
    else
      self.kind :scalene
    end
    

  
 
  class TriangleError < StandardError
    
  end
  
end
