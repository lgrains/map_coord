#point_spec.rb
require 'spec_helper'
require 'models/point'
require 'models/edge'

describe Edge, '#length' do
  it "returns length of edge given endpoints" do
    p1 = Point.new(3,5)
    p2 = Point.new(-4,-7)
    edge = Edge.new(p1,p2)

    expect { edge.length.to eq(Math.sqrt(193)) }
  end
end
