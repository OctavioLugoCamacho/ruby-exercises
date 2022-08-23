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

  it "would increase the total brightness by 1" do
    ary = Array.new(1000 * 1000, 0)
    command = ["turn on 0,0 through 0,0"]
    lights = Lights.new(command, ary)

    lights.day6b.should == 1
  end

  it "would increase the total brightness by 2000000" do
    ary = Array.new(1000 * 1000, 0)
    command = ["toggle 0,0 through 999,999"]
    lights = Lights.new(command, ary)

    lights.day6b.should == 2000000
  end
end
