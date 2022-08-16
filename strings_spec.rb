require_relative 'strings'

describe Strings do
  it "is nice when is ugknbfddgicrmopn" do
    string = Strings.new(["ugknbfddgicrmopn"],0)

    string.day5a.should == 1
  end

  it "is nice when is aaa" do
    string = Strings.new(["aaa"],0)

    string.day5a.should == 1
  end

  it "is bad when is jchzalrnumimnmhp" do
    string = Strings.new(["jchzalrnumimnmhp"],0)

    string.day5a.should == 0
  end

  it "is bad when is haegwjzuvuyypxyu" do
    string = Strings.new(["haegwjzuvuyypxyu"],0)

    string.day5a.should == 0
  end

  it "is bad when is dvszwmarrgswjxmb" do
    string = Strings.new(["dvszwmarrgswjxmb"],0)

    string.day5a.should == 0
  end

end
