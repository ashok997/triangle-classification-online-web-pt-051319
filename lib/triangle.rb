require 'pry'

class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def illegal?
    if side_a==0||side_b==0||side_c==0
      true
    elsif side_a<0 ||side_b<0||side_c<0
      true
    elsif side_a+side_b<side_b||side_b+side_c<side_a
      true
    else
      true
    end
  end
   
  
  def kind
   if illegal?==true
     raise TriangleError
    elsif side_a==side_b && side_b==side_c
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
