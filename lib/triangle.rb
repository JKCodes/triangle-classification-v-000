require 'pry'
class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !valid?
      raise TriangleError
    else
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      else
        :scalene
      end
    end
  end

  # private methods
  private

  def valid?
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      false
    elsif side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      false
    else
      true
    end
  end
end

class TriangleError < StandardError
  def message
    "Hello"
  end
end
