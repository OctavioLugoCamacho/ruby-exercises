require_relative 'secret'

describe Secret do
  it "is 609043 for the key" do
    secret = Secret.new("abcdef")

    secret.day4a.should == 609043
  end

  it "is 1048970 for the key" do
    secret = Secret.new("pqrstuv")

    secret.day4a.should == 1048970
  end

  it "is 346386 for the key" do
    secret = Secret.new("iwrupvqb")

    secret.day4a.should == 346386
  end

  it "is 9958218 for the key" do
    secret = Secret.new("iwrupvqb")

    secret.day4b.should == 9958218
  end

end
