require_relative 'coordinates'

describe Coordinates do
  it "delivers presents to 2 houses" do
    steps = ">".split('')
    position = [[0,0]]
    coordinates = Coordinates.new(steps, position)

    coordinates.day3a.should == 2
  end

  it "delivers presents to 4 houses" do
    steps = "^>v<".split('')
    position = [[0,0]]
    coordinates = Coordinates.new(steps, position)

    coordinates.day3a.should == 4
  end

  it "delivers a bunch of presents to some very lucky children at only 2 houses" do
    steps = "^v^v^v^v^v".split('')
    position = [[0,0]]
    coordinates = Coordinates.new(steps, position)

    coordinates.day3a.should == 2
  end

  it "delivers presents to 3 houses" do
    steps = "^v".split('')
    position = [[0,0]]
    coordinates = Coordinates.new(steps, position)

    coordinates.day3b.should == 3
  end

  it "now delivers presents to 3 houses" do
    steps = "^>v<".split('')
    position = [[0,0]]
    coordinates = Coordinates.new(steps, position)

    coordinates.day3b.should == 3
  end

  it "now delivers presents to 11 houses" do
    steps = "^v^v^v^v^v".split('')
    position = [[0,0]]
    coordinates = Coordinates.new(steps, position)

    coordinates.day3b.should == 11
  end

end
