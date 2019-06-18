require 'pry'

class Triangle
  # write code here
  attr_accessor :a, :b, :c
  
  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
 
 
  
  def kind

    if side_a==side_b && side_b==side_c
      :equilateral
    elsif side_a==side_b || side_b==side_c ||side_a==side_c
      :isosceles
    else
      :scalene
    end
    
  end
  
 
  class TriangleError < StandardError
    
  end
  
end
