require_relative 'lights'

describe Lights do
  it "would turn on every light" do
    ary = Array.new(1000 * 1000, 0)
    command = ["turn on 0,0 through 999,999"]
    lights = Lights.new(command, ary)

    lights.day6a.should == 1000000
  end

  it "would toggle the first line of 1000 lights" do
    ary = Array.new(1000 * 1000, 0)
    command = ["toggle 0,0 through 999,0"]
    lights = Lights.new(command, ary)

    lights.day6a.should == 1000
  end
end
