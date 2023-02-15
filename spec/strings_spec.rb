require './lib/strings'

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

  it "is nice when is qjhvhtzxzqqjkmpb" do
    string = Strings.new(["qjhvhtzxzqqjkmpb"],0)

    string.day5b.should == 1
  end

  it "is nice when is xxyxx" do
    string = Strings.new(["xxyxx"],0)

    string.day5b.should == 1
  end

  it "is bad when is uurcxstgmygtbstg" do
    string = Strings.new(["uurcxstgmygtbstg"],0)

    string.day5b.should == 0
  end

  it "is bad when is ieodomkazucvgmuy" do
    string = Strings.new(["ieodomkazucvgmuy"],0)

    string.day5b.should == 0
  end

end
