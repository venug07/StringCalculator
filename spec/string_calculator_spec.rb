require './lib/string_calculator'


describe StringCalculator do

  before :each do
    @calculator = StringCalculator.new
  end

  context "Given two digits" do 
    it "add the digits" do
      digitsum = @calculator.add("1,2")
      expect(digitsum).to eql(3)
    end
    
    it "should return 0 if string is empty" do
      digitsum = @calculator.add("")
      digitsum.should eql 0
    end
    
    it "should raise the exception for negative values" do
      expect { @calculator.add("-2,-3,1")}.to raise_exception {|exp| exp.message.should eql "Negative numbers not allowed -2, -3" }
    end
    
    it "should throw exception for alphabets" do
      expect { @calculator.add("a,b,3")}.to raise_exception {|exp| exp.message.should eql "Alphabets not allowed a, b" }
    end
  end
  
end
