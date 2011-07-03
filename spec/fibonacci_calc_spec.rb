require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "FibonacciCalc" do
  it "should raise an error when the number is less than zero" do
    lambda {
      -1.closest_fibonacci
    }.should raise_error
  end

  it "should raise an error when the number is equal zero" do
    lambda {
      0.closest_fibonacci
    }.should raise_error
  end

  it "should return zero when number is 1" do
      1.closest_fibonacci.should == 0
  end

  it "should return 89 when number is 144" do
      144.closest_fibonacci.should == 89
  end

  it "should return 144 when number is 145" do
      145.closest_fibonacci.should == 144
  end

  it "should raise an error when the number is too big for Fixnum" do
    lambda {
      1000000000000000000000.closest_fibonacci
    }.should raise_error
  end

end
