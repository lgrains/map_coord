#edge.rb
class Edge
  attr_accessor :p1, :p2

  def initialize(p1,p2)
    @p1,@p2 = p1,p2
  end

  def length
    Math.sqrt((p1.coords[0] - p2.coords[0])**2 + (p1.coords[1] - p2.coords[1])**2)
  end
end
