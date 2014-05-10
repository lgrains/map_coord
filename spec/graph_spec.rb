#point_spec.rb
require 'spec_helper'
require 'models/point'
require 'models/edge'
require 'models/graph'

describe Graph, '#points' do
  before(:each) do
    @p_array = [Point.new(3,5), Point.new(-4,-7), Point.new(14,0), Point.new(2,-5), Point.new(0,3), Point.new(-5,6)]
    @graph = Graph.new(@p_array)
    puts "in before :each where @graph.points is #{@graph.points}"
  end

  it "returns a list of points in the Graph" do
    puts "in test where @graph.points is #{@graph.points} and @p_array is #{@p_array}"
    expect { @graph.points.to == @p_array }
  end

  it "constructs and returns the edges in the graph" do
    puts graph.edges
    expect { graph.edges to eq [
          Edge.new(p_array[0],p_array[1]),
          Edge.new(p_array[0],p_array[2]),
          Edge.new(p_array[0],p_array[3]),
          Edge.new(p_array[0],p_array[4]),
          Edge.new(p_array[0],p_array[5]),
          Edge.new(p_array[1],p_array[2]),
          Edge.new(p_array[1],p_array[3]),
          Edge.new(p_array[1],p_array[4]),
          Edge.new(p_array[1],p_array[5]),
          Edge.new(p_array[2],p_array[3]),
          Edge.new(p_array[2],p_array[4]),
          Edge.new(p_array[2],p_array[5]),
          Edge.new(p_array[3],p_array[4]),
          Edge.new(p_array[3],p_array[5]),
          Edge.new(p_array[4],p_array[5])
        ]
      }
  end
end
