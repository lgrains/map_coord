class Graph
  attr_accessor :points, :edges

  def initialize(array_of_points)
    points = Marshal.load(Marshal.dump(array_of_points))
    puts "in initialize where graph.points is #{points}"
    edges=[]
    construct_edges
  end

  def construct_edges
    puts "in construct_edges where points is #{points}"
    (0..points.length).each do |f_index|
      (ndx..points.length).each do |l_index|
        edges << Edge.new(points[f_index],points[l_index])
      end
    end
  end

end
