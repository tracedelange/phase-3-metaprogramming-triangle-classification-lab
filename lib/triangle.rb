class Triangle

  attr_reader :first, :second, :third, :kind

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third


    if @first <= 0 || @second <= 0 || @third <= 0
      raise TriangleError
    elsif (@first + @second) <= @third || (@second + @third) <= @first || (@first + @third) <= @second 
      raise TriangleError
    else
      if @first == @second && @second == @third
        @kind = :equilateral
      elsif @first == @second || @first == @third || @second == @third
        @kind = :isosceles
      elsif @first != @second && @first != @third && @second != @third
        @kind = :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Bad shape! no cookie."
    end
  end

  def kind
    @kind
  end

end
