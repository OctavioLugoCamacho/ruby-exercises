require './lib/paper'

describe Paper do
  it "needs 58 square feet" do
    paper = ["2x3x4"]
    paper1 = Paper.new(paper)

    paper1.day2a.should == 58
  end

  it "needs 43 square feet" do
    paper = ["1x1x10"]
    paper1 = Paper.new(paper)

    paper1.day2a.should == 43
  end

  it "needs 101 square feet" do
    paper = ["2x3x4", "1x1x10"]
    paper1 = Paper.new(paper)

    paper1.day2a.should == 101
  end

  it "needs 34 feet of ribbon" do
    paper = ["2x3x4"]
    paper1 = Paper.new(paper)

    paper1.day2b.should == 34
  end

  it "needs 14 feet of ribbon" do
    paper = ["1x1x10"]
    paper1 = Paper.new(paper)

    paper1.day2b.should == 14
  end

end
