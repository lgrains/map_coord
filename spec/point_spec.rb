#point_spec.rb
require 'spec_helper'
require 'models/point.rb'

describe Point, '#coords' do
  it "returns the x,y coords for a point" do
    point = Point.new(3,5)
    expect { point.coords.to eq([3,5]) }
  end
end
