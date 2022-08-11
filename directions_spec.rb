require_relative 'directions'

describe Directions do
  it "is at floor 0" do
    directions1 = Directions.new("(())", 0)
    directions2 = Directions.new("()()", 0)

    directions1.day1a.should == 0
    directions2.day1a.should == 0
  end

  it "is at floor 3" do
    directions1 = Directions.new("(((", 0)
    directions2 = Directions.new("(()(()(", 0)
    directions3 = Directions.new("))(((((", 0)

    directions1.day1a.should == 3
    directions2.day1a.should == 3
    directions3.day1a.should == 3
  end

  it "is at floor -1" do
    directions1 = Directions.new("())", 0)
    directions2 = Directions.new("))(", 0)

    directions1.day1a.should == -1
    directions2.day1a.should == -1
  end

  it "is at floor -3" do
    directions1 = Directions.new(")))", 0)
    directions2 = Directions.new(")())())", 0)

    directions1.day1a.should == -3
    directions2.day1a.should == -3
  end

  it "is at position 1" do
    directions1 = Directions.new(")", 0)

    directions1.day1b.should == 1
  end

  it "is at position 5" do
    directions1 = Directions.new("()())", 0)

    directions1.day1b.should == 5
  end

end
