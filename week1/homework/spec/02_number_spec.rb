describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (4 -3).should eq 1
  end

  it "can be multiplied" do
    (5 * 6).should eq 30
  end

  it "support exponentiation" do
    (3 ** 2).should eq 9
  end

  it "support modulo" do
    (10 % 3).should eq 1
  end

  it "are usually of class Fixnum" do
    a = 5
    a.should be_a Fixnum
  end

  it "that are are very large are of class Bignum" do
    a = 123456789 ** 3
    a.should be_a Bignum
  end

  it "are returned from Integers calculations" do
    a = 5
    b = 3
    (a - b).should be_a Integer
  end

end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
    (2.3 + 3.4).should be_a Float
  end

end

describe "Other Ruby classes" do

  it "ADD ANY EXAMPLE THAT TESTS A Rational, Complex OR BigDecimal value"

end