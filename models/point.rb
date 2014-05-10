class Point
  attr_accessor :x,:y

  def initialize(x,y)
    @x, @y = x,y
  end

  def coords
    [x,y]
  end

end
